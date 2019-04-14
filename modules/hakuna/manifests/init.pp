# install hakuna
class hakuna {

  file { "/home/${::myuser}/bin/hk":
    ensure  => 'file',
    content => template('hakuna/hk'),
    owner   => $::myuser,
    group   => $::myuser,
    mode    => '0744',
  }

}
