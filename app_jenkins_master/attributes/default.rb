#<> Sets the required Java version
override['java']['jdk_version'] = '7'

#<> Sets the Java installation distribution.
default['java']['install_flavor'] = 'openjdk'

#<> Sets the installation method for the Jenkins server.
default['jenkins']['master']['install_method'] = 'war'

#<> Sets the system user that is used to clone the repositories for the Jenkins jobs
default['jenkins']['master']['job_provisioning_user'] = 'vagrant'

#<> Sets the system group that is used to clone the repositories for the Jenkins jobs
default['jenkins']['master']['job_provisioning_group'] = 'vagrant'

#<> Holds the domain name of the Gitlab server
default['jenkins']['master']['gitlab_host_key_url'] = 'gitlab.pluspunkthosting.de'

#<> Holds the host key of the Gitlab server (e.g. to be added to the known_hosts for the Jenkins master)
default['jenkins']['master']['gitlab_host_key'] = 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCvd4BtLOgJLP43RbNsQjtxze8fFJWsMz/vaUoIiLZdkVaRsHzfNlP7YkNelFTem977UXkNy6wwSYSZ1J5peG/09uIrR2TtMN/WQLaY69YMT+ifB0FcgkjVcJ3SN4NDSMtue0GcCdjSrpy5c9xix+2Rrgm1hRiNEy/RR9fMOX4dlUrwEpPk6qzJCGenRdMWcn4JpNfYm12Y7JwCNGAgQUV2c9P6WyLyPVzpiasP3ysYl5XRgVrhhkhpgqL7gfrewnxnuwki1eaIJ+ZmxGFWqktFmataWU4Mub4OZoY96LrITwMX8yVC+f7G+gddG4jGl4nbFpaQ4upiqhtXyDepfPBd'

#<> Configures the Jenkins plugins to be installed on the server.
default['jenkins']['master']['plugins'] = {
  'ldap' => {
    'longName' => 'LDAP Plugin',
    'version' => '1.11',
    'enabled' => true,
    'pinned' => true,
    'disabled' => nil
  },
  'scm-api' => {
    'longName' => 'SCM API Plugin',
    'version' => '0.2',
    'enabled' => true,
    'pinned' => false,
    'disabled' => nil
  },
  'matrix-project' => {
    'longName' => 'Matrix Project Plugin',
    'version' => '1.4',
    'enabled' => true,
    'pinned' => true,
    'disabled' => nil
  },
  'instant-messaging' => {
    'longName' => 'Jenkins instant-messaging plugin',
    'version' => '1.30',
    'enabled' => true,
    'pinned' => false,
    'disabled' => nil
  },
  'maven-plugin' => {
    'longName' => 'Maven Integration plugin',
    'version' => '2.7.1',
    'enabled' => false,
    'pinned' => true,
    'disabled' => nil
  },
  'subversion' => {
    'longName' => 'Jenkins Subversion Plug-in',
    'version' => '2.4.4',
    'enabled' => false,
    'pinned' => true,
    'disabled' => nil
  },
  'mapdb-api' => {
    'longName' => 'MapDB API Plugin',
    'version' => '1.0.6.0',
    'enabled' => true,
    'pinned' => false,
    'disabled' => nil
  },
  'build-pipeline-plugin' => {
    'longName' => 'Build Pipeline Plugin',
    'version' => '1.4.4',
    'enabled' => true,
    'pinned' => false,
    'disabled' => nil
  },
  'mask-passwords' => {
    'longName' => 'Mask Passwords Plugin',
    'version' => '2.7.2',
    'enabled' => true,
    'pinned' => false,
    'disabled' => nil
  },
  'jabber' => {
    'longName' => 'Jenkins Jabber notifier plugin',
    'version' => '1.25',
    'enabled' => true,
    'pinned' => false,
    'disabled' => nil
  },
  'mailer' => {
    'longName' => 'Jenkins Mailer Plugin',
    'version' => '1.11',
    'enabled' => true,
    'pinned' => true,
    'disabled' => nil
  },
  'parameterized-trigger' => {
    'longName' => 'Jenkins Parameterized Trigger plugin',
    'version' => '2.25',
    'enabled' => true,
    'pinned' => false,
    'disabled' => nil
  },
  'custom-job-icon' => {
    'longName' => 'Custom Job Icon plugin',
    'version' => '0.2',
    'enabled' => true,
    'pinned' => false,
    'disabled' => nil
  },
  'cloverphp' => {
    'longName' => 'Jenkins Clover PHP plugin',
    'version' => '0.3.3',
    'enabled' => true,
    'pinned' => false,
    'disabled' => nil
  },
  'build-blocker-plugin' => {
    'longName' => 'Build Blocker Plugin',
    'version' => '1.4.1',
    'enabled' => true,
    'pinned' => false,
    'disabled' => nil
  },
  'ansicolor' => {
    'longName' => 'AnsiColor',
    'version' => '0.4.0',
    'enabled' => true,
    'pinned' => false,
    'disabled' => nil
  },
  'credentials' => {
    'longName' => 'Credentials Plugin',
    'version' => '1.18',
    'enabled' => true,
    'pinned' => true,
    'disabled' => nil
  },
  'pam-auth' => {
    'longName' => 'PAM Authentication plugin',
    'version' => '1.2',
    'enabled' => false,
    'pinned' => true,
    'disabled' => nil
  },
  'javadoc' => {
    'longName' => 'Javadoc Plugin',
    'version' => '1.2',
    'enabled' => true,
    'pinned' => true,
    'disabled' => nil
  },
  'ant' => {
    'longName' => 'Ant Plugin',
    'version' => '1.2',
    'enabled' => true,
    'pinned' => false,
    'disabled' => nil
  },
  'ssh-credentials' => {
    'longName' => 'SSH Credentials Plugin',
    'version' => '1.10',
    'enabled' => true,
    'pinned' => true,
    'disabled' => nil
  },
  'jenkinswalldisplay' => {
    'longName' => 'Jenkins Wall Display Master Project',
    'version' => '0.6.27',
    'enabled' => true,
    'pinned' => false,
    'disabled' => nil
  },
  'performance' => {
    'longName' => 'Performance plugin',
    'version' => '1.11',
    'enabled' => true,
    'pinned' => false,
    'disabled' => nil
  },
  'matrix-auth' => {
    'longName' => 'Matrix Authorization Strategy Plugin',
    'version' => '1.2',
    'enabled' => true,
    'pinned' => true,
    'disabled' => nil
  },
  'ssh-agent' => {
    'longName' => 'SSH Agent Plugin',
    'version' => '1.5',
    'enabled' => true,
    'pinned' => false,
    'disabled' => nil
  },
  'cvs' => {
    'longName' => 'Jenkins CVS Plug-in',
    'version' => '2.12',
    'enabled' => false,
    'pinned' => true,
    'disabled' => nil
  },
  'translation' => {
    'longName' => 'Jenkins Translation Assistance plugin',
    'version' => '1.12',
    'enabled' => true,
    'pinned' => true,
    'disabled' => nil
  },
  'git-client' => {
    'longName' => 'Jenkins GIT client plugin',
    'version' => '1.11.0',
    'enabled' => true,
    'pinned' => false,
    'disabled' => nil
  },
  'windows-slaves' => {
    'longName' => 'Windows Slaves Plugin',
    'version' => '1.0',
    'enabled' => true,
    'pinned' => false,
    'disabled' => nil
  },
  'ssh-slaves' => {
    'longName' => 'Jenkins SSH Slaves plugin',
    'version' => '1.9',
    'enabled' => false,
    'pinned' => true,
    'disabled' => nil
  },
  'junit' => {
    'longName' => 'JUnit Plugin',
    'version' => '1.2',
    'enabled' => false,
    'pinned' => true,
    'disabled' => nil
  },
  'nested-view' => {
    'longName' => 'Nested View Plugin',
    'version' => '1.14',
    'enabled' => true,
    'pinned' => false,
    'disabled' => nil
  },
  'template-project' => {
    'longName' => 'Template Project plugin',
    'version' => '1.4.2',
    'enabled' => true,
    'pinned' => false,
    'disabled' => nil
  },
  # TODO plugin seems to make problems when configuring slaves...
  # 'jquery' => {
  #   'longName' => 'Jenkins jQuery plugin',
  #   'version' => '1.7.2-1',
  #   'enabled' => true,
  #   'pinned' => false,
  #   'disabled' => nil
  # },
  'antisamy-markup-formatter' => {
    'longName' => 'OWASP Markup Formatter Plugin',
    'version' => '1.3',
    'enabled' => true,
    'pinned' => true,
    'disabled' => nil
  },
  'external-monitor-job' => {
    'longName' => 'External Monitor Job Type Plugin',
    'version' => '1.2',
    'enabled' => true,
    'pinned' => true,
    'disabled' => nil
  },
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
    'enabled' => true,
    'pinned' => false,
    'disabled' => nil
  }
}

# TODO remove this from the Jenkins cookbook
#<> Configures the VirtualBox version to be installed on the server.
default['virtualbox']['version'] = '4.3'

# TODO remove this from the Jenkins cookbook
#<> Configures the Ruby versions to be installed on the server via rbenv.
default['rbenv']['ruby_versions'] = {
  '1.9.3-p545' => true
}

#<
# Configures a list of Jenkins slaves to be registered at the master.
#
# The following keys must be set:
#
# <code>
# default['jenkins']['master']['slaves'] = {
#   'jenkinsslave.dev.punkt.de' => {
#     'ip'          => '10.20.30.51',
#     'description' => 'jenkinsslave.dev.punkt.de',
#     'user'        => 'root',
#     'password'    => 'password',
#     'enabled'     => true,
#     'remote_fs'   => '/share/executor',
#     'labels'      => ['executor', 'freebsd', 'jail']
#   }
# }
# <code>
#>
default['jenkins']['master']['slaves'] = {}

#<
# File that contains the public ssh key for the Jenkins user.
#
# You can set a hash containing the cookbook and the file as:
#
# <code>
# { 'cookbook' => 'env_jenkins_master_dev', 'file' => 'keys/id_rsa.pub' }
# </code>
#
# The hash syntax enables to override this attribute in another cookbook and use keys from there.
#>
default['jenkins']['master']['ssh_public_key'] = nil

#< File that contains the private ssh key for the Jenkins user
#
# You can set a hash containing the cookbook and the file as:
#
# <code>
# { 'cookbook' => 'env_jenkins_master_dev', 'file' => 'keys/id_rsa' }
# </code>
#
# The hash syntax enables to override this attribute in another cookbook and use keys from there.
#>
default['jenkins']['master']['ssh_private_key'] = nil
