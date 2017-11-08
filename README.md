Metricly (formerly Netuitive) Cookbook (Chef)
=============================================

A cookbook to automate the installation and configuration of the Metricly/metricly agent for both Linux and Windows

**NOTE** - This will only install the agent on Linux/Windows machines and configure the API key
for communication with the Metricly server

### Attributes

| Key | Type | Description | Default | Required |
|-----|------|-------------|---------|----------|
| `node['metricly']['install_flavor']` | String | OS Type - Windows or Linux | `nil`| Yes |
| `node['metricly']['windows_agent_msi_url']` | String | URL to Windows msi installer |  'https://repos.uat.netuitive.com/windows-agent/59/X64/Release/CollectdWin-x64.msi' | No |
| `node['metricly']['windows_api_key']` | String | Company Specific API Key for Windows Integrations (differs from Linux Integration API Key) | `nil`| Yes |
| `node['metricly']['linux_api_key']` | String | Company Specific API Key for Linux Integration (differs from Windows Integration API Key) | `nil`| Yes |

Supported Platforms
--------------------

### Operating Systems

#### Official
Supported and tested locally with vagrant:
- Ubuntu 16.04 LTS
- Centos 7.3
- Windows 2012R2
- Windows 2016
