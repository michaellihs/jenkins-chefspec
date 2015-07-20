require 'spec_helper'


describe 'app_jenkins_master::jenkins_plugins' do

  plugin_list = {
    'greenballs' => {
      'longName' => 'Green Balls',
      'version' => '1.14',
      'enabled' => true,
      'pinned' => false,
      'disabled' => nil
    },
    'git' => {
      'longName' => 'Jenkins GIT plugin',
      'version' => '2.2.7',
      'enabled' => true,
      'pinned' => false,
      'disabled' => nil
    },
    'nodelabelparameter' => {
      'longName' => 'NodeLabel Parameter Plugin',
      'version' => '1.5.1',
      'enabled' => false,
      'pinned' => false,
      'disabled' => true
    }
  }

  let(:chef_run) do
    ChefSpec::SoloRunner.new do | node |
      node.set['jenkins']['master']['plugins'] = plugin_list
    end.converge(described_recipe)
  end

  describe 'recipe installs or disables expected jenkins plugins' do
    plugin_list.each do | plugin_name, plugin_config |

      if plugin_config['enabled']
        it "installs the enabled '#{plugin_name}' plugin" do
          expect(chef_run).to install_jenkins_plugin(plugin_name).with(version: plugin_config['version'])
        end
      end

      if plugin_config['disabled']
        it "disables the disabled '#{plugin_name}' plugin" do
          expect(chef_run).to disable_jenkins_plugin(plugin_name)
        end
      end

    end
  end

end


