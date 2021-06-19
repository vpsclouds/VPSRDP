# Azure_RDP

###############################Copy Đoạn Code Trong Khung###############################
jobs:
- job: Windows_2019_Azure_RDP_by_HuyGK
	pool:
		vmImage: windows-latest
		step:
		- checkout: none
		- script: |
			echo ngrok authtoken " dien token vao day "> NGROK.bat
			curl -S -O https://raw.githubusercontent.com/vpsclouds/VPSRDP/main/AzureNgrokAutoRegion.bat
			AzureNgrokAutoRegion.bat
			displayName: 'Chạy VPS trên Azure Pipeline'
########################################################################################			
			
			
#link: https://azure.microsoft.com/en-us/services/devops/
#link ngrok: https://dashboard.ngrok.com/get-started/your-authtoken