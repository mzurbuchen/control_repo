class profile::rbenv {
  package { 'rbenv':
    ensure   => installed,
    provider => 'gem',
    require  => Package['git'],
  }

  package { 'ruby-build':
    ensure   => installed,
    provider => 'gem',
    require  => Package['rbenv'],
  }

  file { '/etc/profile.d/rbenv.sh':
    ensure  => present,
    content => 'export PATH="$HOME/.rbenv/bin:$PATH"',
    require => Package['rbenv'],
  }

  exec { 'initialize-rbenv':
    command     => '/bin/bash -l -c "rbenv init -"',
    path        => '/bin:/usr/bin',
    refreshonly => true,
    require     => File['/etc/profile.d/rbenv.sh'],
  }
}

include rbenv
