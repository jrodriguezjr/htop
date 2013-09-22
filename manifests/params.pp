# Params
class htop::params {

  $package_ensure     = 'present'

  case $::osfamily {
    'Debian': {               
      $package_name           = [ 'htop' ]
    }
    # 'RedHat': {
    #   $package_name    = [ 'htop' ]
    # }
    default: {
      fail("The ${module_name} module is not supported on an ${::osfamily} based system.")
    }
  }
}
