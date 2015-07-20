=begin
#<
Installs plugins configured in the `node['jenkins']['master']['plugins']` attribute.
#>
=end

node['jenkins']['master']['plugins'].each do | plugin_name, plugin_configuration |
  if plugin_configuration['enabled']
    jenkins_plugin plugin_name do
      version plugin_configuration['version']
    end
  end
  if plugin_configuration['disabled']
    jenkins_plugin plugin_name do
      action :disable
    end
  end
end