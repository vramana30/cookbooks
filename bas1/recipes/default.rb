#
# Cookbook Name:: bas1
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
bash "rediff" do
   user "root"
   cwd "/tmp"
   code <<-EOH
   wget "http://www.rediff.com/index.html"
   EOH
   not_if { ::File.exists?("/tmp/index.html") }
end
