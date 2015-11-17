use strict;
use warnings;

use v5.18;

use Shells;

my $s = new Shells();
my $name = shift;

if ( $s->is_installed($name) ) {
  print "$name is installed\n";
}
