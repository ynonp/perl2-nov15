use strict;
use warnings;
use FancyStack;
use Test::More tests => 1;

my $fancy = FancyStack->new;

$fancy->add_item(1,2);
$fancy->add_item(3);

$fancy->pop_item();
$fancy->pop_item();

is($fancy->push_count, 3, 'count pushes');
is($fancy->count_items, 1, 'count items');

