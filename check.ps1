#name startup
#description


##########################pre setup#############################

$pathtoconfig = $pwd.path + "\config.ps1"


###############################include##################################

. $pathtoconfig




################################check status#####################################

if (Test-Path $global:pathtovcli)
    {
    $global:ErrorCheck = $null
    }
else
    {
    $global:ErrorCheck = "I miss VMware vSphere CLI"
    }

##Debug##
Write-Host $global:ErrorCheck
##Debug##