use strict;
use warnings;

use Logger;
use FileWriter;
use Screen;

my $fw = FileWriter->new(file => 'app.log');
my $dbg = FileWriter->new(file => 'debug.log');
my $sw = Screen->new;
my $logger = Logger->new(writers => [$fw, $sw, $dbg]);

$logger->info('hello world');

