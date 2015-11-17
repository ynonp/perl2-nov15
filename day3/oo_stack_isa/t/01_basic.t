use v5.08;
use warnings;
use strict;
use Test::More tests => 4;
use MyStack;

my $stack = MyStack->new();

$stack->add_item(10);
$stack->add_item(20);
$stack->add_item(22, 33);
	
# prints 33
is($stack->pop_item(), 33, "Pop first item");
	
# prints 22
is($stack->pop_item(), 22, "Pop second item");
	
# prints 2
is($stack->count_items(), 2, "Item count == 2");
	
while ( $stack->pop_item() ) {
}

is($stack->count_items(), 0, "Item count == 0");
