#
# Cookbook Name:: play2
# Recipe:: default
#
# Copyright 2012, Arnaud Tanguy
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

include_recipe "java"

bash "build-play" do
    user "root"
    cwd "#{node[:play][:path][:base]}/framework"
    code "./build clean publish-local"
    action :nothing
end

git "play.git" do
    destination "#{node[:play][:path][:base]}"
    repository  "#{node[:play][:repository]}"
    revision node[:play][:revision]
    depth 1
    notifies :run, "bash[build-play]", :immediately
end