#Connect-AzAccount
$rg = 'armtemp2021'
New-AzResourceGroup -Name $rg -Location westindia -Force
New-AzResourceGroupDeployment -Name 'NewStorage' -ResourceGroupName $rg -TemplateFile .\orchestration.json

#New-AzResourceGroupDeployment -Name 'NewStorage' -ResourceGroupName $rg -TemplateFile .\parafiles.json -TemplateParameterFile .\parafiles.parameters.json
#New-AzResourceGroupDeployment -Name 'NewStorage' -ResourceGroupName $rg -TemplateFile '.\storage.json' -storagename 'strte2023' -storagesku 'Standard_LRS'