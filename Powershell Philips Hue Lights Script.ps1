#USES THE PoSHue Module made by lwsrbrts which you must install before running this script



Import-Module -Name PoSHue

$Endpoint = "x.x.x.x" # IP Address of your Hue Bridge.
$UserID = "enter API key here" # API "key" / password / username obtained from Hue.

# Instantiate the class and assign to the $Office variable
$bedroom = [HueLight]::new("LIGHT NAME", $Endpoint, $UserID)

# If the light isn't already on, turn it on.
If ($bedroom.On -ne $true) {
    $bedroom.SwitchHueLight("on");
    $bedroom.SetHueLight(254,22000,254) 
}


