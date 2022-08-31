function Get-Subnet {

$Color = "yellow"
$color2 = "Red"

Function main {
Write-host "===================================" -f $color2
$op = Read-host "Class C/B"

if ($op -eq "C") {ClassC}
if ($op -eq "1") {Classc}
if ($op -eq "B") {ClassB}
if ($op -eq "2") {Classb} 
}  





function ClassC {
Write-host "===================================" -f $color2
[byte]$ipoctet = Read-Host "4th IP octet"
[byte]$cidr = Read-Host "CIDR"
Write-host "===================================" -f $color2
#Class C Working
If ($cidr -eq "25") {$Mask = 128;$subnets = 2;$hosts = 128}
If ($cidr -eq "26") {$Mask = 192;$subnets = 4;$hosts = 64}
If ($cidr -eq "27") {$Mask = 224;$subnets = 8;$hosts = 32}
If ($cidr -eq "28") {$Mask = 240;$subnets = 16;$hosts = 16}
If ($cidr -eq "29") {$Mask = 248;$subnets = 32;$hosts = 8}
If ($cidr -eq "30") {$Mask = 252;$subnets = 64;$hosts = 4}
If ($cidr -eq "31") {$Mask = 254;$subnets = 0;$hosts = 2}
If ($cidr -eq "32") {$Mask = 255;$subnets = 0;$hosts = 1}

[byte]$RangeStart = $Mask -band $ipoctet
[byte]$range = $RangeStart / $hosts
$rangeEnd = $rangestart + $hosts - 1

Write-Host ""
Write-Host "Current Subnet: $Range" -f $Color
Write-Host "Subnet Begins at X.Y.Z.$Rangestart" -f $Color
Write-Host "Subnet Ends at X.Y.Z.$rangeEnd" -f $Color
Write-Host "Subnet Mask is 255.255.255.$Mask" -f $Color
Write-Host "Subnets Available: $subnets" -f $Color
Write-Host "Hosts Per Subnet: $hosts" -f $Color
Write-Host "Subnet Bits: $CIDR" -f $Color
Write-Host ""
}


function ClassB {
Write-host "===================================" -f $color2
[int]$ipoctet = Read-Host "3rd IP octet"
[int]$ipoctet2 = Read-Host "4th IP octet"
[int]$cidr = Read-Host "CIDR"


If ($cidr -eq "17") {$Mask = 128;$Mask2 = 0;$subnets = 2;$Classhosts = 128;$hosts = 32768}
If ($cidr -eq "18") {$Mask = 192;$Mask2 = 0;$subnets = 4;$Classhosts = 64;$hosts = 16384}
If ($cidr -eq "19") {$Mask = 224;$Mask2 = 0;$subnets = 8;$Classhosts = 32;$hosts = 8192}
If ($cidr -eq "20") {$Mask = 240;$Mask2 = 0;$subnets = 16;$Classhosts = 16;$hosts = 4096}
If ($cidr -eq "21") {$Mask = 248;$Mask2 = 0;$subnets = 32;$Classhosts = 8;$hosts = 2048}
If ($cidr -eq "22") {$Mask = 252;$Mask2 = 0;$subnets = 64;$Classhosts = 4;$hosts = 1024}
If ($cidr -eq "23") {$Mask = 254;$Mask2 = 0;$subnets = 128;$Classhosts = 2;$hosts = 512}
If ($cidr -eq "24") {$Mask = 255;$Mask2 = 0;$subnets = 256;$Classhosts = 1;$hosts = 256}



If ($cidr -eq "25") {$Mask = 255;$Mask2 = 128;$subnets = 512;$hosts = 128}
If ($cidr -eq "26") {$Mask = 255;$Mask2 = 192;$subnets = 1024;$hosts = 64}
If ($cidr -eq "27") {$Mask = 255;$Mask2 = 224;$subnets = 2048;$hosts = 32}
If ($cidr -eq "28") {$Mask = 255;$Mask2 = 240;$subnets = 4096;$hosts = 16}
If ($cidr -eq "29") {$Mask = 255;$Mask2 = 248;$subnets = 8192;$hosts = 8}
If ($cidr -eq "30") {$Mask = 255;$Mask2 = 252;$subnets = 16384;$hosts = 4}
If ($cidr -eq "31") {$Mask = 255;$Mask2 = 254;$subnets = 0;$hosts = 2}
If ($cidr -eq "32") {$Mask = 255;$Mask2 = 255;$subnets = 0;$hosts = 1}


[int]$rangeStart = $Mask -band $ipoctet
[int]$rangeStart2 = $Mask2 -band $ipoctet2


if ($cidr -le "24") {

    [int]$range = $ipoctet * 2
    $rangeEnd = $rangeStart + $classhosts - 1   
    $rangeEnd2 = 255
    }



if ($cidr -ge "25") {
    [int]$range = $ipoctet * 2
    $rangeEnd = $rangeStart   
    $rangeEnd2 = $rangestart2 + $hosts - 1
    }

Write-host "===================================" -f $color2
Write-Host ""
Write-Host "Current Subnet: $Range" -f $Color
Write-Host "Subnet Begins at X.Y.$Rangestart.$rangestart2" -f $Color
Write-Host "Subnet Ends at X.Y.$rangeEnd.$rangeEnd2" -f $Color
Write-Host "Subnet Mask: 255.255.$Mask.$Mask2" -f $Color
Write-Host "Subnets Available: $subnets" -f $Color
Write-Host "IP's Per Subnet: $hosts" -f $Color
Write-Host "Subnet Bits: $CIDR" -f $Color
Write-Host ""
}



Main

}
