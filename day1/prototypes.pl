use v5.18;
use strict;
use warnings;

# Gets a Tic-Tac-Toe board and
# tells if 'x' or 'o' is a winner
sub has_winner {

}



sub foo($$) {
  my ($x, $y) = @_;
  print "$x + $y = ", $x+$y, "\n";
}

sub bar(\@) {
  my ($l_ref) = @_;
  print $l_ref->[2], "\n";
}


sub PI() { 3.14 }
# same as:
# use constant pi => 3.14;

say PI + 2;
say 2 + PI;

