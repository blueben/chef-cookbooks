#
# Cookbook Name:: chefpoc-base
# Recipe:: default
#
# Copyright (c) 2016 Slalom Consulting, All Rights Reserved.

include_recipe 'chefpoc-base::chef-client'
include_recipe 'chefpoc-base::cron'
include_recipe 'chefpoc-base::firewall'
include_recipe 'chefpoc-base::ntp'
include_recipe 'chefpoc-base::openssh'
include_recipe 'chefpoc-base::packages'
include_recipe 'chefpoc-base::postfix'
include_recipe 'chefpoc-base::rsyslog'
include_recipe 'chefpoc-base::selinux'
include_recipe 'chefpoc-base::sysctl'
