# List of role IDs
$roleIds = @(
    "e0f68234-74aa-48ed-b826-c38b57376e17", # Redis Cache Contributor
    "9980e02c-c2be-4d73-94e8-173b1dc7cf3c", # Virtual Machine Contributor
    "b78c5d69-af96-48a3-bf8d-a8b4d589de94", # Azure AI Administrator Service Role
    "ed7f3fbd-7b88-4dd4-9017-9adb7ce333f8", # Azure Kubernetes Service Contributor Role
    "4f8fab4f-1852-4a58-a46a-8eaf358af14a", # Avere Contributor
    "090c5cfd-751d-490a-894a-3ce6f1109419", # Azure Service Bus Data Owner
    "b7ef99e8-10af-4a7c-8b15-5b6c352a8378", # Azure Databases ARM Management Contributor
    "641177b8-a67a-45b9-a033-47bc880bb21e", # Managed Application Contributor Role
    "5bd9cd88-fe45-4216-938b-f97437e15450", # DocumentDB Account Contributor
    "749f88d5-cbae-40b8-bcfc-e573ddc772fa", # Monitoring Contributor
    "2cc479cb-7b4d-49a8-b449-8c00fd0f0a4b", # Web Plan Contributor
    "1e241071-0855-49ea-94dc-649edcd759de", # EventGrid Contributor
    "4d97b98b-1d4f-4787-a291-c67834d212e7", # Network Contributor
    "f526a384-b230-433a-b45c-95f59c4a2dec", # Azure Event Hubs Data Owner
    "5d977122-f97e-4b4d-a52f-6b43003ddb4d", # Azure Container Instances Contributor Role
    "e40ec5ca-96e0-45a2-b4ff-59039f2c2b59", # Managed Identity Contributor
    "673868aa-7521-48a0-acc6-0f60742d39f5", # Data Factory Contributor
    "acdd72a7-3385-48ef-bd42-f606fba81ae7"  # Reader
)

# Loop through each role ID and get the actions
foreach ($roleId in $roleIds) {
    $role = Get-AzRoleDefinition -Id $roleId
    Write-Output "Role: $($role.Name)"
    Write-Output "Actions:"
    $role.Actions | ForEach-Object { Write-Output "  $_" }
    Write-Output ""
}
