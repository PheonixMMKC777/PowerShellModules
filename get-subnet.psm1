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

$IpAddress = Read-Host "IP Address"
$cidr = Read-Host "CIDR or Mask"



#a b & c are buffers
$a,$b,$c,[byte]$ipoctet = $IpAddress.Split('.')

Write-host "===================================" -f $color2
#Class C Working
If (($cidr -eq "25")-or($cidr -eq "255.255.255.128")) {$Mask = 128;$subnets = 2;$hosts = 128;$cidr = "25";$NBits = 1}
If (($cidr -eq "26")-or($cidr -eq "255.255.255.192")) {$Mask = 192;$subnets = 4;$hosts = 64;$cidr = "26";$NBits = 2}
If (($cidr -eq "27")-or($cidr -eq "255.255.255.224")) {$Mask = 224;$subnets = 8;$hosts = 32;$cidr = "27";$NBits = 3}
If (($cidr -eq "28")-or($cidr -eq "255.255.255.240")) {$Mask = 240;$subnets = 16;$hosts = 16;$cidr = "28";$NBits = 4}
If (($cidr -eq "29")-or($cidr -eq "255.255.255.248")) {$Mask = 248;$subnets = 32;$hosts = 8;$cidr = "29";$NBits = 5}
If (($cidr -eq "30")-or($cidr -eq "255.255.255.252")) {$Mask = 252;$subnets = 64;$hosts = 4;$cidr = "30";$NBits = 6}

$Hbits = 8 - $NBits

[byte]$RangeStart = $Mask -band $ipoctet
[byte]$range = $RangeStart / $hosts
$rangeEnd = $rangestart + $hosts - 1

$NetworkID = $RangeStart
$BroadcastID = $rangeEnd
$RangeStart++
$rangeEnd--
Write-Host ""
Write-Host "Current Subnet: $Range" -f $Color
Write-Host "Network ID at: $a.$b.$c.$NetworkID" -f $Color
Write-Host "Useable Hosts Begin at: $a.$b.$c.$RangeStart" -f $Color
Write-Host "Useable Hosts End at: $a.$b.$c.$rangeEnd" -f $Color
Write-Host "Subnet Broadcast ID at: $a.$b.$c.$BroadcastID" -f $Color
Write-Host "Subnet Mask is: 255.255.255.$Mask" -f $Color
Write-Host "IP's Per Subnet: $hosts" -f $Color
Write-Host "CIDR: /$CIDR" -f $Color
Write-Host "Network Bits: $Nbits" -f $Color
Write-Host "Host Bits: $Hbits" -f $Color
Write-Host ""
}


function ClassB {
Write-host "===================================" -f $color2
$IpAddress = Read-Host "IP Address"
$cidr = Read-Host "CIDR or Mask"



#a & b are buffers
$a,$b,[byte]$ipoctet, [byte]$ipoctet2 = $IpAddress.Split('.')


If (($cidr -eq "17")-or($cidr -eq "255.255.128.0"))  {$Mask = 128;$Mask2 = 0;$subnets = 2;$Classhosts = 128;$hosts = 32768;$cidr = "17";$NBits = 1}
If (($cidr -eq "18")-or($cidr -eq "255.255.192.0")) {$Mask = 192;$Mask2 = 0;$subnets = 4;$Classhosts = 64;$hosts = 16384;$cidr = "18";$NBits = 2}
If (($cidr -eq "19")-or($cidr -eq "255.255.224.0")) {$Mask = 224;$Mask2 = 0;$subnets = 8;$Classhosts = 32;$hosts = 8192;$cidr = "19";$NBits = 3}
If (($cidr -eq "20")-or($cidr -eq "255.255.240.0")) {$Mask = 240;$Mask2 = 0;$subnets = 16;$Classhosts = 16;$hosts = 4096;$cidr = "20";$NBits = 4}
If (($cidr -eq "21")-or($cidr -eq "255.255.248.0")) {$Mask = 248;$Mask2 = 0;$subnets = 32;$Classhosts = 8;$hosts = 2048;$cidr = "21";$NBits = 5}
If (($cidr -eq "22")-or($cidr -eq "255.255.252.0")) {$Mask = 252;$Mask2 = 0;$subnets = 64;$Classhosts = 4;$hosts = 1024;$cidr = "22";$NBits = 6}
If (($cidr -eq "23")-or($cidr -eq "255.255.254.0")) {$Mask = 254;$Mask2 = 0;$subnets = 128;$Classhosts = 2;$hosts = 512;$cidr = "23";$NBits = 7}
If (($cidr -eq "24")-or($cidr -eq "255.255.255.0")) {$Mask = 255;$Mask2 = 0;$subnets = 256;$Classhosts = 1;$hosts = 256;$cidr = "24";$NBits = 8}



If (($cidr -eq "25")-or($cidr -eq "255.255.255.128")) {$Mask = 255;$Mask2 = 128;$subnets = 512;$hosts = 128;$cidr = "25";$NBits = 9}
If (($cidr -eq "26")-or($cidr -eq "255.255.255.192")) {$Mask = 255;$Mask2 = 192;$subnets = 1024;$hosts = 64;$cidr = "26";$NBits = 10}
If (($cidr -eq "27")-or($cidr -eq "255.255.255.224")) {$Mask = 255;$Mask2 = 224;$subnets = 2048;$hosts = 32;$cidr = "27";$NBits = 11}
If (($cidr -eq "28")-or($cidr -eq "255.255.255.240")) {$Mask = 255;$Mask2 = 240;$subnets = 4096;$hosts = 16;$cidr = "28";$NBits = 12}
If (($cidr -eq "29")-or($cidr -eq "255.255.255.248")) {$Mask = 255;$Mask2 = 248;$subnets = 8192;$hosts = 8;$cidr = "29";$NBits = 13}
If (($cidr -eq "30")-or($cidr -eq "255.255.255.252")) {$Mask = 255;$Mask2 = 252;$subnets = 16384;$hosts = 4;$cidr = "30";$NBits = 14}
$Hbits = 16 - $NBits

[int]$rangeStart = $Mask -band $ipoctet
[int]$rangeStart2 = $Mask2 -band $ipoctet2


if ($cidr -le "24") {
    
    # IT WORKSS
    $rangeEnd = $rangeStart + $classhosts - 1   
    $rangeEnd2 = 255

    [int]$range = $rangeEnd / $Classhosts
    $range--
    }


    # IT WORKSS
if ($cidr -ge "25") {
    
    $divAmount = 256 / $hosts
    $range = $rangeStart * $divAmount
    $RD = 0
    $addRange = 0
    While ($rd -ne $rangeStart2) {
        
        $rd = $rd + $hosts
        $AddRange++
        }

        $range = $range + $addRange
    
    
    $rangeEnd = $rangeStart   
    $rangeEnd2 = $rangestart2 + $hosts - 1
    }
$NetworkID = $RangeStart2
$BroadcastID = $rangeEnd2
$RangeStart2++
$rangeEnd2--

Write-host "===================================" -f $color2
Write-Host ""
Write-Host "Current Subnet: $Range" -f $Color
Write-Host "Network ID: $a.$b.$Rangestart.$NetworkID" -f $Color
Write-Host "Useable Hosts Begin at: $a.$b.$Rangestart.$rangestart2" -f $Color
Write-Host "Useable Hosts End at: $a.$b.$RangeEnd.$rangeEnd2" -f $Color
Write-Host "Subnet Broadcast ID: $a.$b.$rangeEnd.$BroadcastID" -f $Color
Write-Host "Subnet Mask: 255.255.$Mask.$Mask2" -f $Color
Write-Host "Subnets Available: $subnets" -f $Color
Write-Host "IP's Per Subnet: $hosts" -f $Color
Write-Host "CIDR: /$CIDR" -f $Color
Write-Host "Network Bits: $Nbits" -f $Color
Write-Host "Host Bits: $Hbits" -f $Color
Write-Host ""
}



Main

}
