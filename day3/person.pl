use strict;
use warnings;

use Person;

my $p = Person->new(name => 'joe', age => 17, eyecolor => 'green');


$p->grow_up();

$p->say_hello();

