use v5.18;
use strict;
use warnings;

# make perl die automatically
# when its system functions fail
# autodie - perl >= 5.10.1
# use autodie;

# for older perls
use Fatal qw/open/;



# Exceptions in perl
# die - throws an exception
# eval - catches it
#

# Bend or break
#

sub find_in_file {
  my ($needle, $filename) = @_;
  open my $fh, "<", $filename;
  while (<$fh>) {
    print if /$needle/;
  }
  close $fh;
}

# try
eval {
  find_in_file('root', '/etc/passw');
};

# catch
if ( $@ ) {
  # code has died with $@
  print "code died with: $@";
}


print "the end bye bye\n";









