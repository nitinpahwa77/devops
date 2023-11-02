$test_rg =az group create --location northcentralus --name abcd$(Get-Random) | ConvertFrom-Json
$test_sa = az storage account create --name sacbd$(Get-Random) --resource-group $test_rg.name | ConvertFrom-Json
 


$test_rg.name
$test_sa.name