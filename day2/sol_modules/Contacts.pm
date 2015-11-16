package Contacts;
use strict;
use warnings;

sub init {
  # return a new array ref
  return [];
}

sub add_contact {
  my ($data_ref, $name, $opts) = @_;
  push @$data_ref, { name => $name, %$opts }; 
}

sub contacts_by_country {
  my ($data_ref, $country) = @_;

  map { $_->{name} } 
    grep { $_->{lives_in} eq $country } 
    @$data_ref;
}


sub AUTOLOAD {
  our $AUTOLOAD;

  if ( $AUTOLOAD =~ /Contacts::contacts_by_(\w+)/ ) {
    my $criterion = $1;
    my ($data_ref, $val) = @_;
    return map { $_->{name} }
      grep { $_->{$criterion} eq $val } @$data_ref;
  } else {
    die "Missing Subroutine: $AUTOLOAD";
  }
}




1;










