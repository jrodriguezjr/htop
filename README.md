#htop

##Overview

The htop module installs htop.

##Module Description

The htop module handles the setup of the htop tool on your server.

##Setup

###What htop affects

* htop package.

##Usage

All interaction with the htop module can do be done through the main htop class.
This means you can simply toggle the options in the htop class to get at the
full functionality.

###I just want htop, what's the minimum I need?

```puppet
include '::htop'
```

##Reference

###Classes

* htop: Main class, includes all the rest.
* htop::install: Handles the packages.
* htop::params: Handles the module parameter variables for the module.

###Parameters

The following parameters are available in the htop module

####`package_ensure`

This can be set to 'present' or 'latest' or a specific version to choose the
htop package to be installed.

####`package_name`


##Limitations

This module has been built on and tested against Puppet 2.7 and higher.

The module has been tested on the following platforms:

* Debian 6/7
* Ubuntu 12.04

=======

Support
-------

Please log tickets and issues at our [Projects site](https://github.com/jrodriguezjr/htop)
