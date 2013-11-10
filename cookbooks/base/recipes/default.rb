#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2013, Michal Stusio
#
# All rights reserved - Do Not Redistribute
#
cookbook_file "/home/michal/.screenrc" do
  owner "michal"
  mode "0644"
  source "screenrc"
end

cookbook_file "/home/michal/.vimrc" do
  owner "michal"
  mode "0644"
  source "vim"
end


