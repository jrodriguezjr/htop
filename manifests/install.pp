# Install
class htop::install inherits htop {
	
  package { 'htop':
    ensure => $package_ensure,
    name   => $package_name,
  }

}
