class profile::development_tools {
  package { 'git':
    # ensure => 'installed',
    ensure => '1.7',
    provider => 'yum'
  }
}
