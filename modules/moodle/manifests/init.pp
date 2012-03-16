class moodle ($version = 'stable'){
  $folder = 'moodle'
  file {
    "/var/www/${folder}data":
      ensure  => directory,
      require => Class['apache'],
      owner   => 'apache',
      group   => 'apache',
  }

  class {
    'lms':
      source       => "http://download.moodle.org/download.php/direct/stable22/moodle-latest-22.tgz",
      method       => 'tgz',
      folder       => 'moodle',
      targetfolder => 'moodle',
  }
  php::module{'mysql':}
  php::module{'mbstring':}
  php::module{'soap':}
  php::module{'gd':}
  php::module{'intl':}
  php::module{'xmlrpc':}
  php::module{'xml':}
}
