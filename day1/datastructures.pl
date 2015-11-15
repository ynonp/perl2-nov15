use v5.18;
use strict;
use warnings;

my %network = (
  p2p0 => {
    name => 'p2p0',
    ether => '3e:fa:48:a4:ab:98',
    status => 'active',
  },
  awdl0 => {
    ether => '3e:fa:48:a4:ab:98',
    status => 'active',
  },
  en1 => {
    ether => '32:00:18:24:c0:00',
    status => 'inactive',
  },
);


my @people = (
  { name => 'ynon', email => 'ynon@gmail.com' },
  { name => 'jane', email => 'jane@gmail.com' },
  { name => 'jane', email => 'jane2@gmail.com' },
  { name => 'martha', email => 'm@yahoo.com' },
  { name => 'james', email => 'james@walla.com' },
);

my @res = 
  grep { $_->{email} !~ /gmail\.com$/ } 
    @people;

use Data::Dumper;

@res = grep { $_->{status} eq 'active' } values %network;

say Dumper(\@res);

