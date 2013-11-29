#
# Cookbook Name:: monit
# Recipe:: default
#
# Copyright 2013, Michal Stusio
#
# All rights reserved - Do Not Redistribute

package "monit"

service "monit"

cookbook_file "/etc/default/monit" do
  source "monit"
  mode 0644
  owner "root"
  group "root"
  notifies :restart, "service[monit]"
end

template "/etc/monit/monitrc" do
  source "monitrc.erb"
  mode 0700
  owner "root"
  group "root"
  notifies :restart, "service[monit]"
end

cookbook_file "/etc/monit/conf.d/sshd" do
  source "sshd"
  mode 0644
  owner "root"
  group "root"
  notifies :restart, "service[monit]"
end


cookbook_file "/etc/monit/conf.d/postfix" do
  source "postfix"
  mode 0644
  owner "root"
  group "root"
  notifies :restart, "service[monit]"
end

