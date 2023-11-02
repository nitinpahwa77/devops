$rg = az group create -n sfrg -l eastus2 | ConvertFrom-Json

$sa = az storage account create -n sfsa -g $rg.name -l eastus2 --sku Standard_LRS | ConvertFrom-Json

$cont = az storage container create -n containercloud --account-name $sa.name | ConvertFrom-Json


$rg.name
$sa.name
$cont.name