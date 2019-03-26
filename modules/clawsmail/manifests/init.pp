# install claws-mail and config
class clawsmail {

  # claws-mail main package
  package {
    'claws-mail': ensure => installed;
  }

  # german dictionary
  package {
    'aspell-de': ensure => installed;
  }
}
