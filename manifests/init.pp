# Main Class
class htop (
  $package_ensure       = $htop::params::package_ensure,
  $package_name         = $htop::params::package_name,
) inherits htop::params {

  # Input Param Validations
  validate_string($package_ensure)
  validate_array($package_name)

  # Include other classes
  include '::htop::install'

  # Anchor this ship!
  # Anchor this as per #8040 - this ensures that classes won't float off and
  # mess everything up.  You can read about this at:
  # http://docs.puppetlabs.com/puppet/2.7/reference/lang_containment.html#known-issues
  anchor { 'htop::begin': }
  anchor { 'htop::end': }

  Anchor['htop::begin'] -> Class['::htop::install'] 
    -> Anchor['htop::end']

}
