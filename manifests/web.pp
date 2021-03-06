# = Class: graphite::web
#
# Installs the graphite webfontend.
#
# == Actions:
#
# Installs packages for graphite web frontend.
#
# == Requires:
#
# Running web server.
#
# == Todo:
#
# * Update documentation
#
class graphite::web ($time_zone = $::graphite::params::time_zone) {

  require graphite::params
  include graphite::web::package
  class {'graphite::web::config':
    time_zone => $time_zone,
  }
  include graphite::web::service
}



