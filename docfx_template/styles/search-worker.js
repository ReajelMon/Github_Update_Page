(function () {
    importScripts('lunr.min.js');

    var lunrIndex;

    var stopWords = null;
    var searchData = {};

    lunr.tokenizer.separator = /[\s\-\.\(\)]+/;

    var stopWordsRequest = new XMLHttpRequest();
    stopWordsRequest.open('GET', '../search-stopwords.json');
    stopWordsRequest.onload = function () {
        if (this.status != 200) {
            return;
        }
        stopWords = JSON.parse(this.responseText);
        buildIndex();
    }
    stopWordsRequest.send();

    var searchDataRequest = new XMLHttpRequest();

    searchDataRequest.open('GET', '../index.json');
    searchDataRequest.onload = function () {
        if (this.status != 200) {
            return;
        }
        searchData = JSON.parse(this.responseText);

        buildIndex();

        postMessage({ e: 'index-ready' });
    }
    searchDataRequest.send();


    //Deze aangepaste functie zoekt nu eerst op full-text ( bijv: -algemeen = algemeen) EN op sub-text ( Bijv: -alg  = algemeen of algorithm of algometrical) 
    var searchTimeout = null; // Dit aanpassen om de wachttijd voor het zoeken te veranderen

    onmessage = function (oEvent) {
        var q = oEvent.data.q;
        performSearch(q);


    };

    function performSearch(q) {
        var results = new Set(); //Dit is voor de duplicates

        var searchHits = searchWithQuery(q);
        var modifiedQ = q + '*';
        var modifiedHits = searchWithQuery(modifiedQ);

        combineResults(results, searchHits);
        combineResults(results, modifiedHits);

        postMessage({ e: 'query-ready', q: q, d: Array.from(results) });
    }

    // Zoekt met query end returned results als een set
    function searchWithQuery(query) {
        var hits = lunrIndex.search(query);
        var results = new Set();

        hits.forEach(function (hit) {
            var item = searchData[hit.ref];
            results.add({ 'href': item.href, 'title': item.title, 'keywords': item.keywords });
        });

        return results;
    }

    // combineert de twee resultaten ( full en partial ) in een combinatieset
    function combineResults(target, source) {
        source.forEach(function (item) {
            target.add(item);
        });
    }



    //new


    function buildIndex() {
        if (stopWords !== null && !isEmpty(searchData)) {
            lunrIndex = lunr(function () {
                this.pipeline.remove(lunr.stopWordFilter);
                this.ref('href');
                this.field('title', { boost: 50 });
                this.field('keywords', { boost: 20 });

                for (var prop in searchData) {
                    if (searchData.hasOwnProperty(prop)) {
                        this.add(searchData[prop]);
                    }
                }

                var docfxStopWordFilter = lunr.generateStopWordFilter(stopWords);
                lunr.Pipeline.registerFunction(docfxStopWordFilter, 'docfxStopWordFilter');
                this.pipeline.add(docfxStopWordFilter);
                this.searchPipeline.add(docfxStopWordFilter);
            });
        }
    }

    function isEmpty(obj) {
        if (!obj) return true;

        for (var prop in obj) {
            if (obj.hasOwnProperty(prop))
                return false;
        }

        return true;
    }
})();
