#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "httpd" do
   action :install
end
service "httpd" do
   action :start
end
cookbook_file "/var/www/html/index.html" do
  source "index.html"
end
package "curl"
