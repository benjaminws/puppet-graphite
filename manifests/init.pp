# = Class: graphite
#
# This module manages graphite
#
# == Sample Usage:
#
#   include graphite
#
# == Todo:
#
# * Implement user creation.
#

define pipinstall () {
  exec {$title:
    command => "/usr/bin/pip install ${title}",
    unless  => "/usr/bin/pip freeze | grep  ${title}",
  }
}

class graphite{

  include graphite::carbon
  include graphite::whisper

}

