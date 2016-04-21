#
# Cookbook Name:: chefpoc-zookeeper
# Recipe:: default
#
# Copyright (c) 2016 Slalom Consulting, All Rights Reserved.

include_recipe 'chefpoc-zookeeper::install'
include_recipe 'chefpoc-zookeeper::config_renger'
include_recipe 'chefpoc-zookeeper::service'
