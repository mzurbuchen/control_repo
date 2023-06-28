class profile::bundler_install {
  package { 'bundler':
    ensure   => 'latest',
    provider => 'gem',
    require  => Class['profile::ruby_install'],
  }
}
