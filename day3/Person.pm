use Mouse::Util::TypeConstraints;
enum 'EyeColor', [qw/green blue brown gray/];


package Person;
use Mouse;
use strict;
use warnings;
use v5.18;

has 'name', is => 'ro', required => 1, isa => 'Str';
has 'age', is => 'rw', default => 0, isa => 'Int';
has 'eyecolor', is => 'ro', required => 1, isa => 'EyeColor';


sub grow_up {
  my ($self) = @_;
  $self->age( $self->age() + 1 );
}

sub say_hello {
  my ($self) = @_;
  print "Hello! My name is: ", $self->name(), 
        " And I am ", $self->age(), " years old",
        ". Nice to meet you\n";
}

1;
