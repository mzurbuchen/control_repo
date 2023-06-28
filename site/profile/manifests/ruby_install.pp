# ruby_install.pp

class profile::ruby_install {
  include rbenv::plugin
  include rbenv::build

  rbenv::plugin { 'ruby-build':
    ensure => 'v20220624',
  }

  rbenv::build::definition { '2.7.4':
    ensure => present,
  }

  rbenv::build::definition { '3.0.2':
    ensure => present,
  }

  rbenv::build::definition { '3.1.0':
    ensure => present,
  }

  exec { 'install_ruby_2.7.4':
    command     => '/usr/bin/rbenv install 2.7.4',
    path        => '/usr/bin:/usr/sbin:/bin:/sbin',
    user        => 'root',
    require     => [
      Class['rbenv::plugin'],
      Class['rbenv::build'],
      Rbenv::Build::Definition['2.7.4'],
    ],
    creates     => '/usr/share/rbenv/versions/2.7.4',
  }

  exec { 'install_ruby_3.0.2':
    command     => '/usr/bin/rbenv install 3.0.2',
    path        => '/usr/bin:/usr/sbin:/bin:/sbin',
    user        => 'root',
    require     => [
      Class['rbenv::plugin'],
      Class['rbenv::build'],
      Rbenv::Build::Definition['3.0.2'],
    ],
    creates     => '/usr/share/rbenv/versions/3.0.2',
  }

  exec { 'install_ruby_3.1.0':
    command     => '/usr/bin/rbenv install 3.1.0',
    path        => '/usr/bin:/usr/sbin:/bin:/sbin',
    user        => 'root',
    require     => [
      Class['rbenv::plugin'],
      Class['rbenv::build'],
      Rbenv::Build::Definition['3.1.0'],
    ],
    creates     => '/usr/share/rbenv/versions/3.1.0',
  }
}
