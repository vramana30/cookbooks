#
# Cookbook Name:: abc
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
cookbook_file "/etc/abc.conf" do
   case node[:platform]
   when "centos","redhat"
     source "redhat/abc.conf"
   when "ubuntu","debian"
     source "debian/abc.conf"
   end
   mode "0644"
   owner "root"
   group "root"
end
