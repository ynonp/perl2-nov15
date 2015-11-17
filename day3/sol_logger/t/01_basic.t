use strict;
use warnings;
use FileWriter;

use Test::More tests => 1;

my $filewriter = FileWriter->new(file => 'out.log');

ok(-e 'out.log');

