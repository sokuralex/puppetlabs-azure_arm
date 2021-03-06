Document: "WebApps"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/web/resource-manager/Microsoft.Web/stable/2018-02-01/WebApps.json")

## PremierAddOn

Premier add-on.

```puppet
azure_premier_add_on {
  api_version => "api_version",
  kind => "kind (optional)",
  location => "location (optional)",
  premier_add_on => "premierAddOn",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  slot => "slot",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|kind | String | false | Kind of resource. |
|location | String | false | Resource Location. |
|premier_add_on | Hash | true | A JSON representation of the edited premier add-on. |
|properties | String | false | PremierAddOn resource specific properties |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|slot | String | true | Name of the deployment slot. If a slot is not specified, the API will update the named add-on for the production slot. |
|subscription_id | String | true | Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000). |
|tags | Hash | false | Resource tags. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the PremierAddOn

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/premieraddons/%{premier_add_on_name}`|Put|Updates a named add-on of an app.|WebApps_AddPremierAddOnSlot|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/premieraddons/%{premier_add_on_name}`|Get|Gets a named add-on of an app.|WebApps_GetPremierAddOnSlot|
|List - get list using params|``||||
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/premieraddons/%{premier_add_on_name}`|Put|Updates a named add-on of an app.|WebApps_AddPremierAddOnSlot|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/premieraddons/%{premier_add_on_name}`|Delete|Delete a premier add-on from an app.|WebApps_DeletePremierAddOnSlot|
