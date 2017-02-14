Import-Module -Name PoSHue

$Endpoint = "192.168.2.37" # IP Address of your Hue Bridge.
$UserID = "21xKFR5AZpeqZByyBUHTD2lcdxXui17j2aoWbhwM" # API "key" / password / username obtained from Hue.

# Instantiate the class and assign to the $Office variable
$bedroom = [HueLight]::new("cams", $Endpoint, $UserID)

# If the light isn't already on, turn it on and make them green/white
If ($bedroom.On -ne $true) {
    $bedroom.SwitchHueLight("on");
    $bedroom.SetHueLight(254,22000,50)
}


