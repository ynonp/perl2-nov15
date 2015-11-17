package FancyStack;
use strict;
use warnings;
use v5.18;

use base 'MyStack';

sub add_item {
  my ($self, @items) = @_;

  $self->SUPER::add_item(@items);
  $self->{counter} += @items;
}

sub init {
  my ($self) = @_;
  $self->SUPER::init(@_);
  $self->{counter} = 0;
}


sub push_count {
  my ($self) = @_;
  return $self->{counter};
}

1;
