package Logger;
use Mouse;
use strict;
use warnings;
use Writer;


has 'writers', is => 'ro', required => 1, isa => 'ArrayRef[Writer]';

sub write {
  my ($self, $level, @text) = @_;
  
  $_->write("$level: ", @text) for @{$self->writers};
}

sub info {
  my $self = shift;
  $self->write("INFO", @_);
}

sub warning {
  my $self = shift;
  $self->write("WARN", @_);
}

sub error {
  my $self = shift;
  $self->write("ERR", @_);
}

1;
