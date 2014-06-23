#
# Author:: Alexander Popov <alexanderpopov1@gmail.com>
# Cookbook Name:: hanlon
# Recipe:: default
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

# This will run 'apt-get update' on ubuntu and debian systems
include_recipe "apt::default"

# Ensure pre-reqs
%w{ git make mongodb g++ isc-dhcp-server curl }.each { |pkg| package pkg }

# Ensure tftp
include_recipe "hanlon::tftpd"

# Ensure ipxe
#include_recipe "hanlon::ipxe"  


