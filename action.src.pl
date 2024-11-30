#!/usr/bin/env perl

use feature 'signatures';

use lib qw(lib);

use Markdowner qw(headerOK);

my @directories = split(" ", $ENV{'DIRS'});

for my $dir (@directories) {
  my @markdownFiles = glob("$dir/*.md");
  
}

exit(1) unless $ref;
