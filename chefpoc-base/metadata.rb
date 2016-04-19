name 'chefpoc-base'
maintainer 'Benjamin Krueger'
maintainer_email 'benjamink@slalom.com'
license 'all_rights'
description 'Installs/Configures chefpoc-base'
long_description 'Installs/Configures chefpoc-base'
version '0.1.0'

depends "openssh"
depends "ntp"
depends "chef-client"
depends "postfix"
depends "cron"
depends "rsyslog"
depends "firewall"
depends "sysctl"
