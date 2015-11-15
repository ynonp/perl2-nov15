use v5.18;
use strict;
use warnings;

# Write a function that takes a hash ref, 
# key and value and adds the new (key, value) 
# to the hash
#

use Data::Dumper;

sub add_to_hash {
  my ($h_ref, $k, $v) = @_;
  $h_ref->{$k} = $v;
}

my %h = (a => 10);

add_to_hash(\%h, 'b', 20);
add_to_hash(\%h, b => 20);

while (my ($k, $v) = each %h) {
  print "$k => $v\n";
}

print Dumper(\%h);










