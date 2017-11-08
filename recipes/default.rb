#
# Cookbook:: metricly
# Recipe:: default
#

include_recipe "metricly::#{node['metricly']['install_flavor']}"
