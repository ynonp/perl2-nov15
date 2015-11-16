package Calc;

use strict;
use warnings;

use base 'Exporter';

# EXPORT_OK is the list of all functions
# that are copied on demand
our @EXPORT_OK = qw/plus minus/;

# EXPORT is the list of all functions
# copied by default
our @EXPORT = qw/plus minus/;

sub plus  { $_[0] + $_[1] }
sub minus { $_[0] - $_[1] }



