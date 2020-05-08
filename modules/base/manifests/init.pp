# install default packages and include some modules
class base {

  # install useful packages
  package {
    'apt-transport-https': ensure => installed;
    'htop':                ensure => installed;
    'unzip':               ensure => installed;
    'tree':                ensure => installed;
    'git':                 ensure => installed;
    'curl':                ensure => installed;
    'wget':                ensure => installed;
    'traceroute':          ensure => installed;
    'dnsutils':            ensure => installed;
    'vnstat':              ensure => installed;
    'whois':               ensure => installed;
    'openssl':             ensure => installed;
    'pwgen':               ensure => installed;
    'ncdu':                ensure => installed;
    'nmap':                ensure => installed;
    'tig':                 ensure => installed;
    'sipcalc':             ensure => installed;
    'jq':                  ensure => installed;
    'lnav':                ensure => installed;
    'pv':                  ensure => installed;
    'spfquery':            ensure => installed;
    'atool':               ensure => installed; # unpacks everything
    'gparted':             ensure => installed;
    'detox':               ensure => installed; # clean up filenames
  }

  # uninstall unwanted packages
  package {
    'gnome-orca':                  ensure => absent; # screen reader
    'gnome-maps':                  ensure => absent;
    'gnome-weather':               ensure => absent;
    'cheese':                      ensure => absent; # webcam
    'gnome-getting-started-docs':  ensure => absent;
    'brasero':                     ensure => absent; # cd/dvd burner
    'gnome-clocks':                ensure => absent;
  }

  # uninstall games
  package {
    'aisleriot':        ensure => absent;
    'gnome-mines':      ensure => absent;
    'gnome-mahjongg':   ensure => absent;
    'gnome-sudoku':     ensure => absent;
    'gnome-tetravex':   ensure => absent;
    'gnome-nibbles':    ensure => absent;
    'gnome-robots':     ensure => absent;
    'iagno':            ensure => absent;
    'lightsoff':        ensure => absent;
    'swell-foop':       ensure => absent;
    'tali':             ensure => absent;
    'quadrapassel':     ensure => absent;
    'gnome-taquin':     ensure => absent;
    'hitori':           ensure => absent;
    'gnome-klotski':    ensure => absent;
    'five-or-more':     ensure => absent;
    'four-in-a-row':    ensure => absent;
    'gnome-chess':      ensure => absent;
  }

  file { "/home/${::myuser}/.config":
    ensure => 'directory',
    owner  => $::myuser,
    group  => $::myuser,
  }

  file { "/home/${::myuser}/bin":
    ensure => 'directory',
    owner  => $::myuser,
    group  => $::myuser,
  }

  include '::zsh'
  include '::vim'
  include '::redshift'
  include '::mscode'
  include '::i3'
  include '::hakuna'
  include '::ssh'
}
