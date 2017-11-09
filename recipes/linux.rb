#
# Cookbook:: metricly
# Recipe:: linux
#

bash 'install_metricly_agent' do
  code <<-EOH
    sudo N_APIKEY=#{node['metricly']['linux_api_key']} bash -c "$(curl -Ls http://repos.app.netuitive.com/linux.sh)"
  EOH
  not_if { ::File.exist?("/opt/netuitive-agent/conf") }
end
