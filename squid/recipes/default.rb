#
# Cookbook Name:: squid
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "squid" 
service "squid" do
   supports :restart => true
   action [:enable, :start]
end
