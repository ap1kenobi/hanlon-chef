#
# Author:: Alexander Popov <alexanderpopov1@gmail.com>
# Cookbook Name:: hanlon
# Recipe:: tftpd
#
# Copyright 2014, CSC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
package "tftpd"

service "xinetd" do
  supports :restart => true, :status => true, :reload => true
  action [ :enable, :start ]
end

directory node['hanlon']['tftp']['directory'] do
  owner "nobody"
  group "nobody"
  mode 0755
  recursive true
  action :create
end

template "/etc/xinetd.d/tftp" do
  source "tftp.erb"
  owner "root"
  group "root"
  mode 0644
  notifies :restart, "service[xinetd]"
end