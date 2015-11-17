use v5.08;
use strict;
use warnings;
use AddressBook;

my $home_book = AddressBook->new();
my $work_book = AddressBook->new();

$home_book->add_contact( 'Tom', 
  { lives_in => 'USA', 
    email => 'tomthecat@gmail.com' });
	
my @result = $home_book->contact_by_country('USA' );



