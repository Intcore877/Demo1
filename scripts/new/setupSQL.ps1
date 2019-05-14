$installFilePath = 'C:\DBfiles\SQLServer2017-SSEI-Dev.exe'
$initFIlePath = 'C:\DBfiles\ConfigurationFileSQL.ini'
$SQLPath = 'C:\DBfiles'

New-Item -ItemType directory -Path $SQLPath 

git clone https://github.com/Intcore877/SetupSQL $SQLPath

Start-Process $($installFilePath) /ConfigurationFile=$($initFIlePath), /Q, IACCEPTSQLSERVERLICENSETERMS="TRUE"

