# Version and the download location are specified manually. The download should
# preferably come from a local mirror. Checksums are calculated using sha256.

default.zookeeper.version         = '3.4.8'
default.zookeeper.user            = 'zookeeper'
default.zookeeper.user_home       = '/home/zookeeper'
default.zookeeper.install_dir     = '/opt/zookeeper'
default.zookeeper.config_dir      = "#{node.zookeeper.install_dir}/" \
                                    'zookeeper-%{zookeeper_version}/conf'
default.zookeeper.conf_file       = 'zoo.cfg'
default.zookeeper.log_dir         = '/var/log/zookeeper'
default.zookeeper.mirror          = 'http://apache.mirrors.pair.com/zookeeper'
default.zookeeper.checksum        = 'f10a0b51f45c4f64c1fe69ef713abf9eb9571bc7385a82da892e83bb6c965e90'
default.zookeeper.service_style   = 'sysv'

##
# Java options

default.zookeeper.use_java_cookbook = true
default.zookeeper.java_opts         = '-Xms128M -Xmx512M'
default.zookeeper.jmx_port          = '7199'
default.zookeeper.jmx_local         = 'local'

##
# Zookeeper service configuration

default.zookeeper.config.clientPort                = 2181
default.zookeeper.config.dataDir                   = '/srv/zookeeper'
default.zookeeper.config.tickTime                  = 2000
default.zookeeper.config.initLimit                 = 5
default.zookeeper.config.syncLimit                 = 2
default.zookeeper.config.autopurge.snapRetainCount = 1
default.zookeeper.config.autopurge.purgeInterval   = 1
