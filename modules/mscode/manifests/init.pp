# install mscode and config
class mscode {

  file { "/home/${::myuser}/.config/Code":
    ensure => 'directory',
    owner  => $::myuser,
    group  => $::myuser,
  }

  file { "/home/${::myuser}/.config/Code/User":
    ensure => 'directory',
    owner  => $::myuser,
    group  => $::myuser,
  }

  file { "/home/${::myuser}/.config/Code/User/settings.json":
    ensure  => 'file',
    content => template('mscode/settings.json'),
    owner   => $::myuser,
    group   => $::myuser,
  }
}
