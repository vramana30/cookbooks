#
# Cookbook Name:: cookbook-webapp1
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# execute "StopOldWar" do

 #       command "wget –http-user=admin –http-password=ramana http://192.168.2.65:8080/manager/text/stop?path=/sample -O -"
 
#       action :run
 #  end

# execute "UnDeployOldWar" do

#       command "wget –http-user=admin –http-password=ramana http://192.168.2.65:8080/manager/text/undeploy?path=/sample -O -"
 #      action :run
 #  end

# execute "DeployNewWar" do
# wget --http-user=admin --http-password=ramana "http://192.168.2.65:8080/manager/text/deploy?war=file:/warfiles/sample.war&path=/sample" -O -
 #       command 'wget -–http-user=admin -–http-password=ramana "http://192.168.2.65:8080/manager/text/deploy?war=file:/warfiles/sample.war&path=/sample" -O -'
  #      action :run
  # end

bash 'tomcat_io' do
code <<-EOH

wget --user=admin --password=admin123 "http://192.168.2.199:8081/nexus/service/local/artifact/maven/redirect?r=snapshots&g=com.wakaleo.gameoflife&a=gameoflife-web&v=LATEST&p=war" -O /warfiles/gameoflife-web.war

 wget --http-user=admin --http-password=ramana "http://192.168.2.65:8080/manager/text/deploy?war=file:/warfiles/gameoflife-web.war&path=/gameoflife-web" -O -
EOH
end


