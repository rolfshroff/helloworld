$Conn = Get-AutomationConnection -Name AzureRunAsConnection 
Connect-AzAccount -ServicePrincipal -Tenant $Conn.TenantID -ApplicationId $Conn.ApplicationID -CertificateThumbprint $Conn.CertificateThumbprint

Get-AzVM -ResourceGroupName rolf-rnd-rg -Name RDGw01
