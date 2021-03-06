name             'ark'
maintainer       'Franklin Webber'
maintainer_email 'frank@chef.io'
license          'Apache 2.0'
description      'Installs/Configures ark'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.9.1'

source_url 'https://github.com/burtlo/ark' if respond_to(:source_url)
issues_url 'https://github.com/burtlo/ark/issues' if respond_to?(:issues_url)

def supported_operating_systems
  %w( debian ubuntu centos redhat fedora windows )
end

supported_operating_systems.each { |os| supports os }

recipe 'ark::default', 'Installs and configures ark'

depends 'build-essential'

suggests 'windows' # for windows os
suggests '7-zip' # for windows os
