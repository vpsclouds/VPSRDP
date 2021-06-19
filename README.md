# Azure_RDP

###############################Copy Đoạn Code Trong Khung###############################

jobs:
- job: Windows_2019_Azure_RDP_by_HuyGK
  pool:
    vmImage: windows-latest
  steps:
   - checkout: none 
   - script: |
       echo ngrok authtoken "NGROK_AUTH_TOKEN" > NGROK.bat
       curl -s -O https://raw.githubusercontent.com/vpsclouds/VPSRDP/main/AzureNgrokAutoRegion.
       AzureNgrokAutoRegion.bat
     displayName: 'Chạy VPS trên Azure Pipeline'
 			
########################################################################################			
			
			
#link: https://azure.microsoft.com/en-us/services/devops/
#link ngrok: https://dashboard.ngrok.com/get-started/your-authtoken