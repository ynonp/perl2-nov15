use strict;
use warnings;
use FileWriter;
use Path::Tiny;

use Test::More tests => 1;

unlink 'out.log';

my $writer = FileWriter->new(file => 'out.log');
$writer->write('testing');

my $file = path("out.log");
is($file->slurp(), "testing\n", "text written to file");
