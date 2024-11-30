#!/usr/bin/env perl

use v5.14;
use feature 'signatures';

use lib qw(lib);

use Markdowner qw(headerOK);
use GitHub::Actions;


my @directories = split(" ", $ENV{'DIRS'});

start_group("Markdown headers");
for my $dir (@directories) {
  my @markdownFiles = glob("$dir/*.md");
  for my $mdFile (@markdownFiles) {
    open my $mdfh, "<", $mdFile;
    my $firstLine = <$mdfh>;
    close $mdfh;
    chop( $firstLine );
    if ( headerOK( $firstLine ) ) {
      debug "«$firstLine» is proper markdown ho, ho, ho";
    } else {
      error_on_file( "Haar! «$firstLine» is not proper markdown", $mdFile, 1, 1 );
    }
  }
}
end_group;

