#
# Cookbook Name:: tomcat
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#remote_directory "/home/ramana/apache-tomcat-7.0.75" do
cookbook_file "/home/ramana/apache-tomcat-7.0.75.tar.gz" do
source "apache-tomcat-7.0.75.tar.gz"
end
cookbook_file "/home/ramana/tomcat-users.xml" do
source "tomcat-users.xml"
end
bash 'tomcat' do
code <<-EOH
cd /home/ramana
tar -xvzf apache-tomcat-7.0.75.tar.gz
rm -rf apache-tomcat-7.0.75.tar.gz
rm -rf apache-tomcat-7.0.75/conf/tomcat-users.xml
cp tomcat-users.xml /home/ramana/apache-tomcat-7.0.75/conf/
cd apache-tomcat-7.0.75/bin
./startup.sh

EOH
end


