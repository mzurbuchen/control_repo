class profile::development_tools {
  # installiert git version 1.8.3.1
  package { 'git':
    ensure => 'installed',
    # ensure => '1.9.4',
    # provider => 'yum'
  }

  include profile::rbenv_install
  include profile::ruby_install
  include profile::bundler_install
  
  # include profile::rbenv_install
  # class { 'profile::rbenv_install': }

  # node 'rbenv' {
  #   include profile::rbenv_install
  #   include profile::ruby_install
  #   include profile::bundler_install
  # }
}
