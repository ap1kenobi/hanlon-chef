name             'hanlon'
maintainer       'Alexander Popov'
maintainer_email 'alexanderpopov1@gmail.com'
license          'Apache 2'
description      'Installs and configures Hanlon Server and its prerequisites'
version          '0.1.0'

%w{ ubuntu }.each do |os|
  supports os
end

depends 'apt', '~> 2.4.0'
