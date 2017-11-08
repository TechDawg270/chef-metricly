#
# Cookbook:: metricly
# Recipe:: windows
#

# Install the MSI package from Metricly/Netuitive
windows_package 'CollectdWin-x64' do
  source "#{node['metricly']['windows_agent_msi_url']}"
  remote_file_attributes ({
    :path => "#{Chef::Config['file_cache_path']}/CollectdWin-x64.msi"
    })
  options "/quiet NETUITIVE_API_KEY=#{node['metricly']['windows_api_key']}"
end

windows_service 'CollectdWinService (64 bit)' do
  action [:enable,:start]
end
