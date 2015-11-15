use v5.18;
use strict;
use warnings;
use Data::Dumper;

my $h = { foo => 10, bar => 20 };

my $f = sub { print "hello\n" };


sub make_board {
  my @game = (
    [ ' ', ' ', 'x' ],
    [ 'x', 'o', ' ' ],
    [ ' ', 'o', ' ' ],
  );

  return \@game;
}


my $game = make_board();
$game[0]->[1] = 'x';
# print "@game\n";
print Dumper(\@game);

# all memory is free
#
