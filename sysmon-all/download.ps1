$x = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url = "http://xxxx/download/sysmonconfig.xml"
$path = "$x\sysmonconfig.xml"
$client = new-object System.Net.WebClient
$client.UseDefaultCredentials = $true
$client.DownloadFile($url, $path)

$url2 = "http://xxxxx/download/winlogbeat.yml"
$path2 = "$x\winlogbeat\winlogbeat.yml"
$client2 = new-object System.Net.WebClient
$client2.UseDefaultCredentials = $true
$client2.DownloadFile($url2, $path2)