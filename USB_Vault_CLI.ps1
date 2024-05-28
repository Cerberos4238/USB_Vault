<#This password vault script has to be set on a crypted usb key.
There will be no security on your passwords if you run the script outside of a crypted environment#>

#Execution verification
Write-Host "The Script executed correctly`n" -ForegroundColor Green
Start-Sleep -Seconds 1

#Password storage
$Dpass_1 = 'test1'
$Dpass_2 = "test2"
$Dpass_3 = "test3"

#While button
$continue = $true

#Menu
while ($continue){
    Write-Host "----------USB VAULT----------"
    Write-Host "1. test1"
    Write-Host "2. test2"
    Write-Host "3. test3"
    Write-Host "4. Exit"
    Write-Host "----------------------------`n"

    $choice = Read-Host "Enter your choice"
    switch ($choice){
        1{Set-Clipboard $Dpass_1}
        2{Set-Clipboard $Dpass_2}
        3{Set-Clipboard $Dpass_3}
        4{$continue = $false}
        default {Write-Host "`nWrong choice`n" -ForegroundColor Red}
    }
}
