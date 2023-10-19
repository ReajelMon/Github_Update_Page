<# ShellyTempLogging.ps1
 Versie 1.4 – 06-07-2023
 Wouter Stolk

 Dit script leest de waardes van de temperatuur en de luchtvochtigheid uit van Shelly Cloud.
 Meer informatie is te vinden in MontaDocs
#> 

#Hieronder kan je een aantal waarde vast opgegeven. Deze waarde zijn ook via een Parameter mee te geven.
param (
    [string]$DeviceID = "DEVICEID",
    [string]$apiKey = "MWIwNDFidWlk61E241C2148B815BB141C5AEE11A56CCFCEAA358C9FE1BFA1B2E7F8410798A8B3111FFECB807FE17",
    [string]$url = "https://shelly-74-eu.shelly.cloud/device/status"
)

$headers = @{
    "Content-Type" = "application/x-www-form-urlencoded"
}
$body = "id=$DeviceID&auth_key=$apiKey"

$response = Invoke-RestMethod -Uri $url -Method POST -Headers $headers -Body $body | ConvertTo-Json

# Zet de Response om en lees waardes uit
$object = $response | ConvertFrom-Json
$id = $object.data.device_status.id
$TimeStamp = $object.data.device_status._updated
$humidityString = $object.data.device_status.'humidity:0'
$temperatureString = $object.data.device_status.'temperature:0'

# Zet Humidity om naar leesbare waarde
$humidityRegex = '(?<=rh=)[0-9.]+' # Reguliere expressie om de vochtigheidswaarde te extraheren
$humidity = [regex]::Match($humidityString, $humidityRegex).Value
$PRTGHumi = $humidity

# Zet Temperature om naar leesbare waarde
$temperatureRegex = '(?<=tC=)[0-9.]+' # Reguliere expressie om de temperatuurwaarde te extraheren
$temperature = [regex]::Match($temperatureString, $temperatureRegex).Value
$PRTGTemp = $temperature

# Zet UTC tijd om naar tijdzone AMS
$utcTime = Get-Date -Date $TimeStamp -UFormat "%Y-%m-%d %H:%M:%S"
$amsterdamTimeZone = [System.TimeZoneInfo]::FindSystemTimeZoneById("W. Europe Standard Time")
$TimeStamp = [System.TimeZoneInfo]::ConvertTimeFromUtc([DateTime]::ParseExact($utcTime, "yyyy-MM-dd HH:mm:ss", $null), $amsterdamTimeZone)
$TimeStamp = $TimeStamp.ToString("yyyy-MM-dd HH:mm:ss")


# Tijdelijke variabele
#$PRTGTemp = 50.1

$XMLResult = @"
<prtg>
   <interval>300</interval>
   <result>
       <channel>Temperature</channel>
       <unit>custom</unit>
       <customunit>celsius</customunit>
       <mode>Absolute</mode>
       <showChart>1</showChart>
       <showTable>1</showTable>
       <warning>0</warning>
       <float>1</float>
       <value>$PRTGTemp</value>
       <LimitMaxWarning>28</LimitMaxWarning>
       <LimitMaxError>35</LimitMaxError>
       <LimitWarningMsg>De servers hebben het warm!!</LimitWarningMsg>
       <LimitErrorMsg>De temperatuur is te hoog!!</LimitErrorMsg>
       <LimitMode>1</LimitMode>
   </result>
   
   <result>
       <channel>Humidity</channel>
       <unit>Percent</unit>
       <mode>Absolute</mode>
       <showChart>1</showChart>
       <showTable>1</showTable>
       <warning>0</warning>
       <float>1</float>
       <value>$PRTGHumi</value>
       <LimitMaxError>70</LimitMaxError>
       <LimitMaxWarning>55</LimitMaxWarning>
       <LimitWarningMsg>De servers voelen nattigheid!!</LimitWarningMsg>
       <LimitErrorMsg>De servers staan in het water!!</LimitErrorMsg>
       <LimitMode>1</LimitMode>
   </result>

    <text>Last update: $TimeStamp</text>
</prtg>
"@

$XMLResult
