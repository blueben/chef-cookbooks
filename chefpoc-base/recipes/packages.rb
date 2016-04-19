#
# Cookbook Name:: chefpoc-base
# Recipe:: packages
#
# Copyright (c) 2016 Slalom Consulting, All Rights Reserved.

node.packages.each do |pkg|
  package pkg
end
