class profile::ruby_install {
  include rbenv
  rbenv::build::definition { '2.7.4':
    ensure => present,
  }
  rbenv::global { '2.7.4': }
}
