#install flavor
case node['platform_family']
when 'amazon', 'rhel', 'fedora', 'debian'
  default['metricly']['install_flavor'] = 'linux'
when 'windows'
  default['metricly']['install_flavor'] = 'windows'
end

# Windows Agent Installation URL
default['metricly']['windows_agent_msi_url'] = 'https://repos.uat.netuitive.com/windows-agent/59/X64/Release/CollectdWin-x64.msi'

# General Windows API key
default['metricly']['windows_api_key'] = nil

# General Linux API key
default['metricly']['linux_api_key'] = nil
