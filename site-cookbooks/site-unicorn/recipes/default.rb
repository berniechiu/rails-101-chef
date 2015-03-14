#
# Cookbook Name:: site-unicorn
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template "/etc/nginx/conf.d/default.conf" do
  source "nginx.conf.erb"
  owner "root"
  group "root"
  mode "0644"
end

service 'nginx' do
  supports status: true, restart: true, reload: true
  action   :restart
end
