# install redshift and config
class redshift {
  package {
    'redshift-gtk': ensure => installed;
  }

  file { "/home/${::myuser}/.config/redshift.conf":
    ensure  => 'file',
    content => template('redshift/redshift.conf'),
    owner   => $::myuser,
    group   => $::myuser,
  }
}
