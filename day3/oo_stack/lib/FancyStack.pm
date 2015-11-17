package FancyStack;
use strict;
use warnings;
use v5.18;

use MyStack;

sub new {
  my ($cls) = @_;
  my $self = {
    stack => MyStack->new,
    counter => 0,
  };

  bless $self, $cls;
}

sub add_item {
  my ($self, @items) = @_;
  $self->{stack}->add_item(@items);
  $self->{counter} += @items;
}

sub pop_item {
  my ($self) = @_;
  $self->{stack}->pop_item();
}

sub push_count {
  my ($self) = @_;
  $self->{counter};
}

1;
