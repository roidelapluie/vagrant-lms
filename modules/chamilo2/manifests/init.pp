class chamilo2 {
  class {
    'lms':
      source       => 'http://download.chamilo.org/',
      folder       => 'chamilo2',
      targetfolder => '',
      targetfile   => 'index.php',
      method       => 'zip',
  }
  php::module{'mysql':}
  php::module{'mbstring':}
  php::module{'gd':}
  php::module{'xml':}
  php::option {'output_buffering': ensure => 'off'; }
}
