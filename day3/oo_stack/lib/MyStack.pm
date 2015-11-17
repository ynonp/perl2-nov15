package MyStack;
use strict;
use warnings;

sub new {
  my ($pkg) = @_;

  my $self = [];
  bless $self, $pkg;
  return $self;
}

sub add_item {
  my ($self, @items) = @_;
  push @$self, @items;
}

sub pop_item {
  my ($self) = @_;
  pop @$self;
}

sub count_items {
  my ($self) = @_;
  scalar @$self;
}


1;
