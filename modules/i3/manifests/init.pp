# install i3 and config
class i3 {
  package {
    'i3': ensure => installed;
  }

  file { "/home/${::myuser}/.config/i3":
    ensure  => 'directory',
    owner   => "$::myuser",
    group   => "$::myuser",
  }

  file { "/home/${::myuser}/.config/i3/config":
    ensure  => 'file',
    content => template('i3/config'),
    owner   => "$::myuser",
    group   => "$::myuser",
  }
}
