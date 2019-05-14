#default programs
$RunningAsAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")
if ($RunningAsAdmin)
{
Write-Host "Installing Git"  
choco feature enable -n allowGlobalConfirmation | choco install git -y

Write-Host "Installing Notepad++"  
choco install notepadplusplus -y

Write-Host "Google Chrome" 
choco install googlechrome -y

Write-Host "Net install"  
choco install netfx-4.7.1-devpack -y



}
else 
{
Write-Warning "Must be executed in Administrator level shell."
Write-Warning "Script Cancelled!" 
}