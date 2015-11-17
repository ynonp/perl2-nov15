package AddressBook;
use strict;
use warnings;

sub new {
  my $self = [];
  bless $self, 'AddressBook';
  return $self;
}

sub add_contact {
  my ($self, $name, $opts) = @_;
  push @$self, { name => $name, %$opts }; 
}


sub contacts_by_country {
  my ($self, $country) = @_;

  map { $_->{name} } 
    grep { $_->{lives_in} eq $country } 
    @$self;
}

