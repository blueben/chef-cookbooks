#
# Cookbook Name:: chefpoc-base
# Recipe:: packages
#
# Copyright (c) 2016 Slalom Consulting, All Rights Reserved.

node.base.packages.each do |pkg, flag|
  if flag
    package pkg
  end
end
