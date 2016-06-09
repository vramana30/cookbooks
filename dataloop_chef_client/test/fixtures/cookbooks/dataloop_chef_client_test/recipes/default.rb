# This is needed for docker containers
case node['platform']
when 'ubuntu'
  package 'cron'
when 'centos'
  package 'cronie'
end

user 'dataloop'

group 'dataloop' do
  members %w(dataloop)
end

directory '/opt/dataloop/plugins' do
  recursive true
end

ruby_block 'lazy load recipe' do
  block do
    run_context.include_recipe(
      'dataloop_chef_client::default',
      current_cookbook: 'dataloop_chef_client_test'
    )
  end
  ignore_failure true
  only_if { File.exist? '/tmp/ready' }
end

file '/tmp/ready' do
  action :touch
end
