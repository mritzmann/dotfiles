# install default packages and include some modules
class base {
  package {
    'htop':          ensure => installed;
    'unzip':         ensure => installed;
    'tree':          ensure => installed;
    'git':           ensure => installed;
    'curl':          ensure => installed;
    'wget':          ensure => installed;
    'traceroute':    ensure => installed;
    'dnsutils':      ensure => installed;
    'vnstat':        ensure => installed;
    'whois':         ensure => installed;
    'openssl':       ensure => installed;
    'pwgen':         ensure => installed;
    'ncdu':          ensure => installed;
    'nmap':          ensure => installed;
    'tig':           ensure => installed;
    'sipcalc':       ensure => installed;
  }

  file { "/home/${::myuser}/.config":
    ensure  => 'directory',
    owner   => "$::myuser",
    group   => "$::myuser",
  }

  include '::zsh'
  include '::vim'
  include '::redshift'
  include '::newsbeuter'
  include '::mscode'
}
