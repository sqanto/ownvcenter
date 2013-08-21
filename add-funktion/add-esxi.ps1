#name add esxi


##########################pre setup#############################
$pathtoconfig = $pwd.path + "\config.ps1"


###############################include##################################

. $pathtoconfig 


$ESXIServer = read-host "Give me your HOST"
$User = read-host "Give me your Name"
$Pass = read-host "Give me your pw"


. $global:pathtovcli



Connect-VIServer -Server $ESXIServer -User $User -Password $Pass -



###################give me vm##################################



$global:vm = get-vm
$Hostlist.Text = $global:vm