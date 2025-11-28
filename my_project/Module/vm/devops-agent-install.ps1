# PowerShell script to install Azure DevOps agent
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$agentUrl = "https://vstsagentpackage.azureedge.net/agent/3.220.2/vsts-agent-win-x64-3.220.2.zip"
$agentDir = "C:\agent"
New-Item -ItemType Directory -Path $agentDir -Force
Invoke-WebRequest -Uri $agentUrl -OutFile "$agentDir\agent.zip"
Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::ExtractToDirectory("$agentDir\agent.zip", $agentDir)
# Further configuration steps can be added here
