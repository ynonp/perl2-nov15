use strict;
use warnings;
use Data::Dumper;

package A;
sub foo { print "A::foo()\n" }

package B;
sub foo { print "B::foo()\n" }

package main;
A::foo();
B::foo();









