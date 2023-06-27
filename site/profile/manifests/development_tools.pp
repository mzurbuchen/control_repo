class profile::development_tools {
  # installiert git version 1.8.3.1
  package { 'git':
    ensure => 'installed',
    # ensure => '1.9.4',
    # provider => 'yum'
  }
}
