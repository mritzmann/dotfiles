# configure gnome
class gnome(
  $path = '/usr/local/bin/:/bin/:/usr/bin/'
){

  # show week numbers
  exec { 'gnome-show-weekdate':
    command => 'gsettings set org.gnome.desktop.calendar show-weekdate true',
    path    => $path,
    user    => "$::myuser",
  }

  # disable animations
  exec { 'gnome-show-animations':
    command => 'gsettings set org.gnome.desktop.interface enable-animations false',
    path    => $path,
    user    => "$::myuser",
  }
}
