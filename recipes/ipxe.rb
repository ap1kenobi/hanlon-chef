#
# Author:: Alexander Popov <alexanderpopov1@gmail.com>
# Cookbook Name:: hanlon
# Recipe:: ipxe
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

depends "hanlon::tftp"

directory node['hanlon']['ipxe']['directory'] do
  action :create
end


#git clone git://git.ipxe.org/ipxe.git
git node['ipxe']['src_dir'] do
  repository 'git://git.ipxe.org/ipxe.git'
  reference 'HEAD'
  action :sync
  not_if { ::FileTest.directory?("#{node['hanlon']['ipxe']['directory']") }
end

#Patch general.h
wget https://gist.githubusercontent.com/jcpowermac/7cc13ce51816ce5222f4/raw/4384911a921a732e0b85d28ff3485fe18c092ffd/image_comboot.patch
patch -p0 < image_comboot.patch
