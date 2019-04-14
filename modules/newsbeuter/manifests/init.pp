# install newsbeuter and config
class newsbeuter {
  package {
    'newsbeuter': ensure => installed;
  }

  file { "/home/${::myuser}/.newsbeuter":
    ensure => 'directory',
    owner  => $::myuser,
    group  => $::myuser,
  }

  file { "/home/${::myuser}/.newsbeuter/config":
    ensure  => 'file',
    content => template('newsbeuter/config'),
    owner   => $::myuser,
    group   => $::myuser,
  }
}
