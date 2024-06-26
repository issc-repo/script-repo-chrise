Connect-ExchangeOnline
$mailboxes=Get-Mailbox 
$mailboxes | foreach {Remove-MailboxPermission -Identity  $_.UserPrincipalName -user christopher@cloudboxtech.com -AccessRights FullAccess -Confirm:$False -BypassMasterAccountSid}
$mailboxes | foreach {Remove-MailboxPermission -Identity  $_.UserPrincipalName -user christopher@cloudboxtech.com -AccessRights SendAs -Confirm:$False -BypassMasterAccountSid}
