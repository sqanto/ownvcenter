#name GUI main

[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") 

##########################pre setup#############################

$pwd = pwd
$pathtoconfig = $pwd.path + "\config.ps1"
. $pathtoconfig


#$global:User = Get-Credential
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


##############################list host###################################
$VMlist = New-Object System.Windows.Forms.Label
$VMlist.Location = New-Object System.Drawing.Size(10,50) 
$VMlist.Size = New-Object System.Drawing.Size(100,20) 
#$Hostlist.Text = $global:vm
$MainCenter.Controls.Add($VMlist)



[void] $MainCenter.ShowDialog()