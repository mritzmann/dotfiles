# install arandr and config
class arandr {
  package {
    'arandr': ensure => installed,
  }

  file { "/home/${::myuser}/.screenlayout":
    ensure  => 'directory',
    owner   => "$::myuser",
    group   => "$::myuser",
  }

  # Dell default
  file { "/home/${::myuser}/.screenlayout/dell.sh":
    ensure  => 'file',
    content => template('arandr/dell.sh'),
    owner   => "$::myuser",
    group   => "$::myuser",
    mode    => "755",
  }

  # Lenovo default
  file { "/home/${::myuser}/.screenlayout/lenovo.sh":
    ensure  => 'file',
    content => template('arandr/lenovo.sh'),
    owner   => "$::myuser",
    group   => "$::myuser",
    mode    => "755",
  }

  # Lenovo @ ops.ch office
  file { "/home/${::myuser}/.screenlayout/office.sh":
    ensure  => 'file',
    content => template('arandr/office.sh'),
    owner   => "$::myuser",
    group   => "$::myuser",
    mode    => "755",
  }

  # Lenovo @ home winti
  file { "/home/${::myuser}/.screenlayout/home_lenovo.sh":
    ensure  => 'file',
    content => template('arandr/home_lenovo.sh'),
    owner   => "$::myuser",
    group   => "$::myuser",
    mode    => "755",
  }

  # Dell @ home winti
  file { "/home/${::myuser}/.screenlayout/home_dell.sh":
    ensure  => 'file',
    content => template('arandr/home_dell.sh'),
    owner   => "$::myuser",
    group   => "$::myuser",
    mode    => "755",
  }
}
