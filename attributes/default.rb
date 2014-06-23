default['hanlon']['tftp']['directory'] = "/var/lib/tftpboot"

default['hanlon']['tftp']['address'] = "0.0.0.0:69"
default['hanlon']['tftp']['tftp_options'] = "--secure"
default['hanlon']['tftp']['options'] = "-s"

default['hanlon']['ipxe']['directory'] = "#{Chef::Config['file_cache_path']}/ipxe"