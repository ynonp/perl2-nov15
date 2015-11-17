package MyStack;
use strict;
use warnings;

my @data;

sub add_item {
  push @data, @_
}

sub pop_item {
  pop @data
}

sub count_items {
  scalar @data
}


1;
