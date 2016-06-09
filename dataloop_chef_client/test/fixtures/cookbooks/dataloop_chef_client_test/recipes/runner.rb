# ruby_block 'lazy load plugin execution' do
#   block do
#     resource = Chef::Resource::Execute.new(
#       '/usr/local/bin/dataloop_chef_client.rb'
#     )
#     provider = Chef::Provider::Execute.new(resource, run_context)
#     provider.run_action(:run)
#   end
#   only_if { File.exist? '/usr/local/bin/dataloop_chef_client.rb' }
# end

execute '/usr/local/bin/dataloop_chef_client.rb' do
  only_if { File.exist? '/usr/local/bin/dataloop_chef_client.rb' }
end
