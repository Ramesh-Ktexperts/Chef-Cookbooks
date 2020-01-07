
# Cookbook:: ktexperts-apache-cookbook
# Recipe:: ktexperts-sample-recipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.


file '/robofile' do
  content "This is to get Attributes
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']}
  CPU: #{node['cpu']['0']['mhz']}
  MEMORY: #{node['memory']['total']}"
  owner 'root'
  group 'root'
  action :create
end
