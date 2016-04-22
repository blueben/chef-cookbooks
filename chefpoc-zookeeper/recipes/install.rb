#
# Cookbook Name:: chefpoc-zookeeper
# Recipe:: install
#
# Copyright (c) 2016 Slalom Consulting, All Rights Reserved.

include_recipe 'zookeeper::install'

directory node.zookeeper.config.dataDir do
  user  node.zookeeper.user
  group node.zookeeper.user
  mode  '0755'
  recursive true
  action :create
end
