# encoding: utf-8
# Copyright:: Copyright (c) 2012, Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'postfix::_common'

execute 'update-postfix-sender_dependent_relayhost_maps' do
  command "postmap #{node['postfix']['main']['sender_dependent_relayhost']}"
  environment PATH: "#{ENV['PATH']}:/opt/omni/bin:/opt/omni/sbin" if platform_family?('omnios')
  action :nothing
end

template node['postfix']['main']['sender_dependent_relayhost_maps'] do
  source 'sender_dependent_relayhost_maps.erb'
  notifies :run, 'execute[update-postfix-sender_dependent_relayhost_maps]'
end
