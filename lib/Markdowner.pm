package Mardowner;

use parent Exporter;

use v5.14;

our @EXPORT_OK = qw(headerOK);

sub headerOK( $fileContent ) {
  return $fileContent =~ /^\#\s+[A-Z]/;
}
