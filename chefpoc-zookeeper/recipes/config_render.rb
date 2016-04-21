#
# Cookbook Name:: chefpoc-zookeeper
# Recipe:: default
#
# Copyright (c) 2016 Slalom Consulting, All Rights Reserved.

include_recipe 'zookeeper::config_render'

zookeeper_config "#{node.zk.dir}/zookeeper-#{node.zk.version}/conf/zoo.cfg" do
  config  node.zk.config
  user    node.zk.user
  action  :render
end
