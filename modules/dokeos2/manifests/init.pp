class dokeos2 {
  class {
    'lms':
      source       => 'http://www.dokeosnet.com/download/dokeos-2.1.1.zip',
      folder       => 'dokeos2',
      targetfolder => 'dokeos-2.1.1',
      method       => 'zip',
  }
  php::module{'mysql':}
  php::module{'mbstring':}
  php::module{'gd':}
  php::module{'intl':}
  php::module{'ldap':}
}
