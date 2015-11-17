package MyStack;
use strict;
use warnings;

sub new {
  my ($pkg) = @_;
  my $self = {};

  bless $self, $pkg;
  $self->init();

  return $self;
}

sub init {
  my ($self) = @_;
  $self->{data} = [];
}



sub add_item {
  my ($self, @items) = @_;
  push @{$self->{data}}, @items;
}

sub pop_item {
  my ($self) = @_;
  pop @{$self->{data}};
}

sub count_items {
  my ($self) = @_;
  scalar @{$self->{data}};
}


1;
