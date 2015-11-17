use strict;
use warnings;
use FancyStack;
use Test::More tests => 4;

my $fancy = FancyStack->new;

is($fancy->push_count, 0, 'push count start with zero');

$fancy->add_item(1,2);
$fancy->add_item(3);

is($fancy->pop_item(), 3, 'last item was 3');
$fancy->pop_item();

is($fancy->push_count, 3, 'count pushes');
is($fancy->count_items, 1, 'count items');

