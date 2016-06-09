require 'spec_helper'

describe 'dataloop_chef_client' do
  let(:chef_run) { ChefSpec::SoloRunner.converge described_recipe }
  let(:attrs) { chef_run.node['dataloop-chef-client'] }

  it 'creates template: /usr/local/bin/dataloop_chef_client.rb with '\
    'client.rb' do
    expect(chef_run).to create_template(
      attrs['script-path']
    )
  end

  it 'creates template: /opt/dataloop/plugins/dataloop_chef_client.sh' do
    expect(chef_run).to create_template(
      attrs['plugin-path']
    ).with_content { |c| expect(c).to include(attrs['plugin-path']) }
  end

  it 'creates cron: dataloop_chef_client' do
    expect(chef_run).to create_cron('dataloop_chef_client').with(
      minute: attrs['minutes'],
      hour: '*',
      weekday: '*',
      user: attrs['user'],
      mailto: attrs['mailto'],
      command: attrs['script-path']
    )
  end
end
