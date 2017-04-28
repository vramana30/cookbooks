#
# Cookbook Name:: temp2
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template "/etc/kkk" do
     source "kkk.conf.erb"
     variables ({
          :user => user1
      })
end
