while($true){

    $ProfileName = (get-netconnectionProfile).Name
    $SSIDs = "IITG_WIFI", "Sasudiiiii", "EEELIB_WIFI"

    $reg = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings"
    $settings = Get-ItemProperty -Path $reg

    if($SSIDs -contains $ProfileName){
        if(!($settings.ProxyEnable)){
            Set-ItemProperty -Path $reg -Name ProxyServer -Value "202.141.80.24:3128"
            Set-ItemProperty -Path $reg -Name ProxyEnable -Value 1
        }     
    }else{
        Set-ItemProperty -Path $reg -Name ProxyEnable -Value 0
    }
}