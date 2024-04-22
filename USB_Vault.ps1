Write-Host "Welcome to the USB Vault" -ForegroundColor Green
Start-Sleep -Seconds 2

#Password storage
$Dpass_1 = 'Test1'
$Dpass_2 = "Test2"
$Dpass_3 = "Test3"
$Dpass_4 = "Test4"

#The GUI
Add-type -assembly System.Windows.Forms

$main_form = New-Object System.Windows.Forms.Form
$main_form.Text = 'USB Vault'
$main_form.Width = 325
$main_form.Height = 100
$main_form.AutoSize = $true

#Domain Buttons
$Dpass = New-Object System.Windows.Forms.Button
$Dpass.Location = New-Object System.Drawing.Size(35,35)
$Dpass.Size = New-Object System.Drawing.Size(120,23)
$Dpass.Text = "Test1"
$Dpass_Click = {Set-Clipboard $Dpass_1}
$main_form.Controls.Add($Dpass)
$Dpass.Add_Click($Dpass_Click)

$Dpass1 = New-Object System.Windows.Forms.Button
$Dpass1.Location = New-Object System.Drawing.Size(160,35)
$Dpass1.Size = New-Object System.Drawing.Size(120,23)
$Dpass1.Text = "Test2"
$Dpass1_Click = {Set-Clipboard $Dpass_2}
$main_form.Controls.Add($Dpass1)
$Dpass1.Add_Click($Dpass1_Click)


$Dpass2 = New-Object System.Windows.Forms.Button
$Dpass2.Location = New-Object System.Drawing.Size(35,70)
$Dpass2.Size = New-Object System.Drawing.Size(120,23)
$Dpass2.Text = "Test3"
$Dpass2_Click = {Set-Clipboard $Dpass_3}
$main_form.Controls.Add($Dpass2)
$Dpass2.Add_Click($Dpass2_Click)


$Dpass3 = New-Object System.Windows.Forms.Button
$Dpass3.Location = New-Object System.Drawing.Size(160,70)
$Dpass3.Size = New-Object System.Drawing.Size(120,23)
$Dpass3.Text = "Test4"
$Dpass3_Click = {Set-Clipboard $Dpass_4}
$main_form.Controls.Add($Dpass3)
$Dpass3.Add_Click($Dpass3_Click)

$main_form.ShowDialog()