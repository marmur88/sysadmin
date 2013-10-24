#
# Cookbook Name:: postgresql
# Recipe:: default
#
# Copyright 2013, Michal Stusio
#
# All rights reserved - Do Not Redistribute
#
package "postgresql"

execute "Create DB user" do
  command "sudo -u postgres createuser michal"      
  not_if %Q{sudo -u postgres psql -c "\\dg" | awk '{print $1}' | head -n -1 | tail -n +5 | grep -w michal}
  action :run
end


execute "Create DB" do
  command "sudo -u postgres createdb michaldb -O michal"
  not_if %Q{sudo -u postgres psql -c "\\l" | awk '{print $1}' | head -n -3 | tail -n +4 | grep -w michaldb}
  action :run
end

template "/etc/postgresql/9.3/main/postgresql.conf" do
  source "postgresql.conf.erb"
  mode 0644
  owner "postgres"
  group "postgres"
  notifies :restart, "service[postgresql]"
end

service "postgresql"

