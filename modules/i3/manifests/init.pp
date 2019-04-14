# install i3 and config
class i3 {

  # i3 main package
  package {
    'i3': ensure => installed;
  }

  file { "/home/${::myuser}/.config/i3":
    ensure => 'directory',
    owner  => $::myuser,
    group  => $::myuser,
  }

  file { "/home/${::myuser}/.config/i3/config":
    ensure  => 'file',
    content => template('i3/i3.conf'),
    owner   => $::myuser,
    group   => $::myuser,
  }

  # i3blocks
  package {
    'i3blocks': ensure => installed;
  }

  file { "/home/${::myuser}/.config/i3blocks":
    ensure => 'directory',
    owner  => $::myuser,
    group  => $::myuser,
  }

  file { "/home/${::myuser}/.config/i3blocks/config":
    ensure  => 'file',
    content => template('i3/i3blocks.conf'),
    owner   => $::myuser,
    group   => $::myuser,
  }

  # rofi: program launcher and windows switcher
  package {
    'rofi': ensure => installed;
  }
}
