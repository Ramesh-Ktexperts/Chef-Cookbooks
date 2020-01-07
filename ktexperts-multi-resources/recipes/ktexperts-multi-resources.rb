#
# Cookbook:: ktexperts-multi-resources
# Recipe:: ktexperts-multi-resources
#
# Copyright:: 2020, The Authors, All Rights Reserved.



#### TO INSTALL MUTIPLE PACKAGES ###
%w(tree mysql httpd).each do |p|
  package p do
    action :install
  end
end

#### TO CREATE MUTIPLE USERS ###
%w(Ramesh Ajay Vinod).each do |p|
  user p do
    action :create
  end
end

#### TO CREATE MUTIPLE FILES ### 
%w(/ktfile1 /kt2 /kt3).each do |p|
  file p do
    action :create
  end
end

#### TO CREATE MUTIPLE DIRECTORIES ### 
%w(/kt-1 /kt-2 /kt-3).each do |path|
  directory path do
    action :create
  end
end

#### TO CREATE MUTIPLE GROUPS ### 
%w(ktexperts1 ktexperts2 ktexperts3).each do |grp|
  group grp do
    action :create
  end
end

#### TO ADD MUTIPLE USERS TO SINGLE GROUP ### 
group 'ktexperts1' do
  action :modify
  members ['Ramesh','Ajay','Vinod']
  append true
end

#### TO DOWNLOAD PACKAGE FROM INTERNET ### 
remote_file "/home/ec2-user/chef-workstation-0.13.35-1.el7.x86_64.rpm" do
  source "https://packages.chef.io/files/stable/chef-workstation/0.13.35/el/8/chef-workstation-0.13.35-1.el7.x86_64.rpm"
  action :create
end

