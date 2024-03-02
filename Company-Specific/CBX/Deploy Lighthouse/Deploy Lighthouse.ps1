# Instructions Here - Do not run this script directly: https://www.2azure.nl/2019/07/18/how-to-setup-azure-lighthouse-manual/

# Basic instruction are:
# 1. Connect using connect-azaccount
# 1.1 Use an account that has Owner Access to the sub you want to add to management
# 1.1.1 Give the account owner access if needed.

# 2. Run get-AZSubscription to get subscription ID

# 3 run Set-AzContext -Subscription <SubscriptionID> to the subscription you want

# 4. Make sure that the template files in the the folder path C:\Azure LightHouse

# 5. Run the below:

New-AzDeployment -Name LightHouse -Location westeurope -TemplateFile "C:\Azure Lighthouse\rgDelegatedResourceManagement.json" -TemplateParameterFile "C:\Azure Lighthouse\rgDelegatedResourceManagement.parameters.json" -Verbose
