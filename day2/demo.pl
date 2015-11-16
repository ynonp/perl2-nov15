use strict;
use warnings;
use v5.18;
use List::Util qw/sum/;
use Data::Dumper;

my @l = (10, 2, 3);
my $sum = sum(@l);


print Dumper(\@l);

