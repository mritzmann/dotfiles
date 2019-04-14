# install zsh and oh-my-zsh
class zsh {
  package {
    'zsh': ensure => installed;
  }

  file { "/home/${::myuser}/.zshrc":
    ensure  => 'file',
    content => template('zsh/zshrc'),
    owner   => $::myuser,
    group   => $::myuser,
  }

  file { "/home/${::myuser}/.config/zsh":
    ensure => 'directory',
    owner  => $::myuser,
    group  => $::myuser,
  }

  file { "/home/${::myuser}/.config/zsh/env.d":
    ensure => 'directory',
    owner  => $::myuser,
    group  => $::myuser,
  }
}
