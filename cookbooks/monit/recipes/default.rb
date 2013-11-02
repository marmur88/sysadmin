#
# Cookbook Name:: monit
# Recipe:: default
#
# Copyright 2013, Michal Stusio
#
# All rights reserved - Do Not Redistribute

package "monit"

cookbook_file "/etc/monit/conf.d/postfix" do
  source "postfix"
  notifies :restart, "service[monit]"
end

service "monit"
