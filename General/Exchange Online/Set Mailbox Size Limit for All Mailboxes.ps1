# Connect to Exchange Online
Connect-ExchangeOnline

# Set send / receive limits for all users to 150 MB
Get-Mailbox | Set-Mailbox -MaxSendSize 150mb -MaxReceiveSize 150mb

# Confirm it applied
Get-Mailbox | ft name, maxsendsize, maxreceivesize