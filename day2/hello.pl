use strict;
use warnings;

# do happens at runtime
# and don't remember what it ran
do 'Hello.pm';

# require happens at runtime
# and remembers what it loaded
require Hello;

# use happens at compile time
use Hello;

print "the end\n";











