class claroline {
  class {
    'lms':
      source       => 'http://downloads.sourceforge.net/project/claroline/Claroline/Claroline%201.10.7/claroline1107.tar.gz',
      folder       => 'claroline',
      method       => 'tgz',
      targetfolder => 'claroline1107',
  }
  php::module{'mysql':}
  php::module{'gd':}
}
