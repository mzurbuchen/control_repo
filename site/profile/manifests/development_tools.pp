class profile::development_tools {
  package { 'git':
    # ensure => 'installed',
    ensure => '1.9.4',
    provider => 'yum'
  }
}
