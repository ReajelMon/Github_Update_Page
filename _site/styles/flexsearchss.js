const FlexSearch = require('flexsearch');
console.log("FlexSearch has been imported")


let index = new FlexSearch.Index()


console.log("Flexsearch constructor succesfully made")

index.add(1, "This is the content of document 1.");
index.add(2, "Here's some content for document 2.");
console.log("Documents have been succesfully added")

const results = index.search("doc*");
console.log(results);
