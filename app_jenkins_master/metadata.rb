name             'app_jenkins_master'
maintainer       'Michael Lihs'
maintainer_email 'lihs@punkt.de'
license          'All rights reserved'
description      'Provisions a Jenkins master server.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

supports 'ubuntu'

depends          'jenkins'
