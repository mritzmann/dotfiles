# install vim and config
class vim {
  package {
    'vim': ensure => installed;
  }

  file { "/home/${::myuser}/.vimrc":
    ensure  => 'file',
    content => template('vim/vimrc'),
    owner   => $::myuser,
    group   => $::myuser,
  }
}
