#
# Cookbook Name:: docker-jenkins
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

node.override['docker']['docker_daemon_timeout'] = 30

docker_service 'default' do
  action [:create, :start]
end

docker_image 'skeptomai/docker-jenkins' do
  action :pull
end

docker_container 'jenkins server' do
  image 'skeptomai/docker-jenkins'
  port '8080:8080'
  detach true
end
