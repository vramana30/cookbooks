require 'spec_helper'

describe 'dataloop_chef_client' do
  describe command(
    'sudo -u dataloop /opt/dataloop/plugins/dataloop_chef_client.sh'
  ) do
    its(:stdout) { should match(/^OK | hours=\d+\.\d{1,2};;;;$/) }
    its(:exit_status) { should eq 0 }
  end
end
