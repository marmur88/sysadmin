#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2013, Michal Stusio
#
# All rights reserved - Do Not Redistribute
#

file "/home/michal/test_chef" do
  action :create
  owner "michal"
  mode "0644"
  content "test2\n"
end

cookbook_file "/home/michal/cookbook_test" do
  owner "michal"
  mode "0644"
  source "file"
end

cookbook_file "/home/michal/.screenrc" do
  owner "michal"
  mode "0644"
  source "screenrc"
end
