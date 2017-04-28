#
# Cookbook Name:: motd
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template "/etc/motd" do
    source "motd.erb"
    notifies :restart, 'service[ntpd]'
end
package "ntp"
service "ntpd" do
  action :nothing
end
include_recipe "apache"
