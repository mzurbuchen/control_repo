class profile::rbenv_install {
  exec { 'install_rbenv':
    command     => 'git clone https://github.com/rbenv/rbenv.git ~/.rbenv',
    path        => '/usr/bin:/usr/sbin:/bin:/sbin',
    user        => 'root',
    creates     => '/root/.rbenv',
    require     => Package['git'],
  }

  exec { 'configure_rbenv':
    command     => 'echo -e \'export PATH="$HOME/.rbenv/bin:$PATH"\neval "$(rbenv init -)"\' >> /root/.bashrc',
    path        => '/usr/bin:/usr/sbin:/bin:/sbin',
    user        => 'root',
    unless      => 'grep -Fxq "export PATH=\\"$HOME/.rbenv/bin:$PATH\\"" /root/.bashrc && grep -Fxq "eval \\"$(rbenv init -)\\"" /root/.bashrc',
    require     => Exec['install_rbenv'],
  }

  exec { 'reload_bashrc':
    command     => 'source /root/.bashrc',
    path        => '/usr/bin:/usr/sbin:/bin:/sbin',
    user        => 'root',
    refreshonly => true,
    require     => Exec['configure_rbenv'],
  }
}

# class { 'profile::rbenv_install': }
