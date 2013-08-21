#name GUI main

[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") 

##########################pre setup#############################

$pwd = pwd
$pathtoconfig = $pwd.path + "\config.ps1"
. $pathtoconfig
###############################include##########################



###############################gui standard##########################
$MainCenter = New-Object System.Windows.Forms.Form
$MainCenter.StartPosition = "CenterScreen"
$MainCenter.Size = New-Object System.Drawing.Size(1000,900)
$MainCenter.Text = "ownvcenter"



##############################menu###################################
. $pathtomenu
$MainCenter.Controls.Add($MS_Main)
$MainCenter.MainMenuStrip = $MS_Main




[void] $MainCenter.ShowDialog()