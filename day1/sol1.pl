use v5.18;
use warnings;
use strict;

###
# diff_sum demo
#
# calculate diff between two lists
# using a method
# demonstrates references to functions
#

use List::Util qw/sum/;
sub mul {
  my $res = 1;
  $res *= $_ for @_;
  return $res;
}

sub diff {  
  my ($f_ref, $a_ref, $b_ref) = @_;

  $f_ref->(@$a_ref) - $f_ref->(@$b_ref);
}

my @a = (1, 2, 3);
my @b = (1, 2, 6);

say diff(\&sum, \@a, \@b);
say diff(\&mul, \@a, \@b);


