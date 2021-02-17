Set-NetIPInterface -InterfaceIndex 11 -DHCP Enabled
Set-DnsClientServerAddress -ResetServerAddresses -InterfaceIndex 11
Restart-NetAdapter "Ethernet"