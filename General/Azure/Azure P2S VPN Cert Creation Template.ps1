#Create Certs for Use in Azure P2S VPN Configuration

#Root Cert and allocation of root cert to $Cert variable
$cert = New-SelfSignedCertificate -Type Custom -KeySpec Signature `
-Subject "CN=P2SRootCertPH" -KeyExportPolicy Exportable `
-HashAlgorithm sha256 -KeyLength 2048 `
-CertStoreLocation "Cert:\CurrentUser\My" -KeyUsageProperty Sign -KeyUsage CertSign

#Child Cert creation using $cert variable for root cert
New-SelfSignedCertificate -Type Custom -DnsName P2SChildCertPH -KeySpec Signature `
-Subject "CN=P2SChildCertPH" -KeyExportPolicy Exportable `
-HashAlgorithm sha256 -KeyLength 2048 `
-CertStoreLocation "Cert:\CurrentUser\My" `
-Signer $cert -TextExtension @("2.5.29.37={text}1.3.6.1.5.5.7.3.2")

