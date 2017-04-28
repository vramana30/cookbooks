#
# Cookbook Name:: ex1
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
cookbook_file "/tmp/xyz1" do
   source "xyz1"
end
execute "xyz" do
  command "echo hai > /tmp/xyz"
  action :nothing
  subscribes :run, "cookbook_file[/tmp/xyz1]",
             :immediately
end
