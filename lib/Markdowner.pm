package Markdowner;

use feature 'signatures';

use parent Exporter;

our @EXPORT_OK = qw(headerOK);

sub headerOK( $fileContent ) {
  return $fileContent =~ /^\#\h+[A-Z]/;
}
