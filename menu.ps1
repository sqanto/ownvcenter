#name menu

##########################pre setup#############################

$pwd = pwd
$pathtoconfig = $pwd.path + "\config.ps1"
. $pathtoconfig




$MS_Main = new-object System.Windows.Forms.MenuStrip
$fileToolStripMenuItem = new-object System.Windows.Forms.ToolStripMenuItem
$openToolStripMenuItem = new-object System.Windows.Forms.ToolStripMenuItem

#
# MS_Main
#
$MS_Main.Items.AddRange(@(
$fileToolStripMenuItem))
$MS_Main.Location = new-object System.Drawing.Point(0, 0)
$MS_Main.Name = "MS_Main"
$MS_Main.Size = new-object System.Drawing.Size(354, 24)
$MS_Main.TabIndex = 0
$MS_Main.Text = "menuStrip1"
#
# fileToolStripMenuItem
#
$fileToolStripMenuItem.DropDownItems.AddRange(@(
$openToolStripMenuItem))
$fileToolStripMenuItem.Name = "fileToolStripMenuItem"
$fileToolStripMenuItem.Size = new-object System.Drawing.Size(35, 20)
$fileToolStripMenuItem.Text = "New"
#
# openToolStripMenuItem
#
$openToolStripMenuItem.Name = "openToolStripMenuItem"
$openToolStripMenuItem.Size = new-object System.Drawing.Size(152, 22)
$openToolStripMenuItem.Text = "New ESXI Host"
function OnClick_openToolStripMenuItem($Sender,$e)
    {
        . $global:pathtoaddesxi
    }

$openToolStripMenuItem.Add_Click( { OnClick_openToolStripMenuItem $openToolStripMenuItem $EventArgs} )


###Edit##
$fileToolStripMenuItem2 = new-object System.Windows.Forms.ToolStripMenuItem
$openToolStripMenuItem2 = new-object System.Windows.Forms.ToolStripMenuItem
$fileToolStripMenuItem2.DropDownItems.AddRange(@(
$openToolStripMenuItem2))
$fileToolStripMenuItem2.Name = "fileToolStripMenuItem"
$fileToolStripMenuItem2.Size = new-object System.Drawing.Size(65, 20)
$fileToolStripMenuItem2.Text = "Edit"