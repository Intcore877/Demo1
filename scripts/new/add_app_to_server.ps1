Import-Module WebAdministration

$sitePath = 'C:\inetpub\wwwroot\GameStore'
New-Item -ItemType directory -Path $sitePath 
git clone https://github.com/Intcore877/GameStore $sitePath

$siteName = 'GameStore'
$appName ='GameStoreApp'
$port = 80
$path = 'C:\inetpub\wwwroot\GameStore'
$appPool = 'GameStore'

$pools= dir IIS:\AppPools 

cd IIS:\ 

Write-Host "Remove website that was created by default"
Remove-WebSite -Name "Default web site"

Write-Host "App pool created"
New-WebAppPool $appPool

Write-Host "We create our site"
New-WebSite -Name $siteName -Port $port  -PhysicalPath $path -ApplicationPool $appPool

Write-Host "Web app created!"
New-WebApplication -Name $appName -Site $siteName -PhysicalPath $path -ApplicationPool $appPool

Set-ItemProperty IIS:\AppPools\$appPool -name processModel -value @{userName="vagrant";password="vagrant";identitytype=3} 