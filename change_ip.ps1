#Get-NetIPConfiguration -InterfaceAlias Ethernet -Detailed
New-NetIPAddress -IPAddress 192.168.254.50 -DefaultGateway 192.168.254.254 -PrefixLength 24 -InterfaceIndex 11
#Set-NetIPAddress -InterfaceIndex 11 -IPAddress 192.168.254.50 -PrefixLength 24 #-Confirm True #-DefaultGateway 192.168.254.254  