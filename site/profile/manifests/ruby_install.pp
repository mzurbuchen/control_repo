class profile::ruby_install {
  exec { 'install_ruby_2.7.4':
    command     => '/root/.rbenv/bin/rbenv install 2.7.4',
    path        => '/usr/bin:/usr/sbin:/bin:/sbin:/root/.rbenv/bin',
    user        => 'root',
    creates     => '/root/.rbenv/versions/2.7.4',
  }

  exec { 'install_ruby_3.0.2':
    command     => '/root/.rbenv/bin/rbenv install 3.0.2',
    path        => '/usr/bin:/usr/sbin:/bin:/sbin:/root/.rbenv/bin',
    user        => 'root',
    creates     => '/root/.rbenv/versions/3.0.2',
  }

  exec { 'install_ruby_3.1.0':
    command     => '/root/.rbenv/bin/rbenv install 3.1.0',
    path        => '/usr/bin:/usr/sbin:/bin:/sbin:/root/.rbenv/bin',
    user        => 'root',
    creates     => '/root/.rbenv/versions/3.1.0',
  }
}
