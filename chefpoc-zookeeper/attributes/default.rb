# Version and the download location are specified manually. The download should
# preferably come from a local mirror. Checksums are calculated using sha256.

default.zk.version          = '3.4.8'
default.zk.user             = 'zookeeper'
default.zk.user_home        = '/home/zookeeper'
default.zk.dir              = '/opt/zookeeper'
default.zk.data_dir         = '/srv/zookeeper'
default.zk.install.mirror   = 'http://apache.mirrors.pair.com/zookeeper'
default.zk.install.checksum = 'f10a0b51f45c4f64c1fe69ef713abf9eb9571bc7385a82da892e83bb6c965e90'

default.zk.config.clientPort                = 2181
default.zk.config.dataDir                   = '/srv/zookeeper'
default.zk.config.tickTime                  = 2000
default.zk.config.autopurge.snapRetainCount = 1
default.zk.config.autopurge.purgeInterval   = 1
