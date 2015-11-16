use v5.08;
use warnings;
use strict;
use Test::More tests => 4;
use MyStack;
	
MyStack::add_item(10);
MyStack::add_item(20);
MyStack::add_item(22, 33);
	
# prints 33
is(MyStack::pop_item(), 33, "Pop first item");
	
# prints 22
is(MyStack::pop_item(), 22, "Pop second item");
	
# prints 2
is(MyStack::count_items(), 2, "Item count == 2");
	
while ( MyStack::pop_item() ) {
}

is(MyStack::count_items(), 0, "Item count == 0");
