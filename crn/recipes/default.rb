#
# Cookbook Name:: crn
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
cron "updaing" do
     command " echo hai >> /tmp/lll"
     user "root"
     hour "1"
     minute "0"
end
   
