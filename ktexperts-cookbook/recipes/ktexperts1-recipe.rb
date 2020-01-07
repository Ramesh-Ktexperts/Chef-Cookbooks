#
# Cookbook:: ktexperts-cookbook
# Recipe:: ktexperts1-recipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package 'tree'do
  action :install 
end


file '/ktexperts1-recipefile' do
  content 'This is my website'
  action :create
  owner 'root'
  group 'root'
end
