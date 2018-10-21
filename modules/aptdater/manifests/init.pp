# install apt-dater and config
class aptdater {
  package {
    'apt-dater': ensure => installed;
  }

  file { "/home/${::myuser}/.config/apt-dater":
    ensure  => 'directory',
    owner   => "$::myuser",
    group   => "$::myuser",
  }

  file { "/home/${::myuser}/.config/apt-dater/hosts.xml":
    ensure  => 'link',
    target  => "/home/${::myuser}/git/dotfiles-privat/.config/apt-dater/hosts.xml",
    owner   => "$::myuser",
    group   => "$::myuser",
  }
}
