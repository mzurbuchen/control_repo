node default {
  file {'/root/README':
    ensure => file,
    content => 'It is Friday',
    owner => 'root',
  }
}
# node 'master.puppet.vm' {
#  include role::master_server
# }
