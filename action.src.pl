#!/usr/bin/env perl

use v5.14;
use feature 'signatures';

use lib qw(lib);

use Markdowner qw(headerOK);

my @directories = split(" ", $ENV{'DIRS'});

for my $dir (@directories) {
  my @markdownFiles = glob("$dir/*.md");
  for my $mdFile (@markdownFiles) {
    open my $mdfh, "<", $mdFile;
    my $firstLine = <$mdfh>;
    say $firstLine;
  }
}

