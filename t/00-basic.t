# -*- mode:cperl -*-

use v5.36; # for signatures

use lib qw(lib ../lib);
use Markdowner qw(headerOK);

use Test2::V0;

for my $str ( ("# Yes", "#    FOO", "# Bar" )) {
  ok( headerOK( $str ), "«$str» is OK" );
}

for my $badStr ( ("#Yes", "#    foo", "#\nBar" )) {
  isnt( headerOK( $badStr ), 1, "«$badStr» fails" );
}

done_testing;
