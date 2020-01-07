#
# Cookbook:: ktexperts-apache-cookbook
# Recipe:: ktexperts-apache-recipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.


package 'httpd' do
  action :install
end


file '/var/www/html/index.html' do
  content "wwww.ktexperts.com"
  action :create
end


service 'httpd' do
  action [ :enable, :start ]
end
