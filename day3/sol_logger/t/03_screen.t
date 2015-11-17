use strict;
use warnings;

use Test::More tests => 1;
use Screen;

my $writer = Screen->new;

my $output;
open my $fh, '>', \$output;

my $old = select($fh);
$writer->write('hello world');
select($old);

close $fh;

is($output, "hello world\n");
