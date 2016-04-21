#
# Cookbook Name:: chefpoc-zookeeper
# Recipe:: default
#
# Copyright (c) 2016 Slalom Consulting, All Rights Reserved.

include_recipe 'zookeeper::install'

zookeeper node.zk.version do
  user        node.zk.user
  user_home   node.zk.user_home
  mirror      node.zk.install.mirror
  checksum    node.zk.install.checksum
  install_dir node.zk.dir
  action      :install
end

directory node.zk.data_dir do
  user  node.zk.user
  group node.zk.user
  mode  '0755'
  recursive true
  action :create
end
