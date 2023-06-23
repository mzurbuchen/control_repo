node default {
  file {'/root/README':
    ensure => file,
    conent => 'This is a readme',
  }
}
