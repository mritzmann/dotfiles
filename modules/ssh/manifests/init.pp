# install OpenSSH client and config
class ssh {
  package {
    'openssh-client': ensure => installed;
    'ssh-askpass':    ensure => installed;
  }

  file { "/home/${::myuser}/.ssh":
    ensure => 'directory',
    owner  => $::myuser,
    group  => $::myuser,
  }

  file { "/home/${::myuser}/.ssh/config":
    ensure  => 'file',
    content => template('ssh/config'),
    owner   => $::myuser,
    group   => $::myuser,
  }
}
