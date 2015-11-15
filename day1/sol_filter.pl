use v5.18;
use strict;
use warnings;

# Implement a function that takes a list ref and a value, 
# and adds that value to the list
#
sub add_to_list {
  my ($l_ref, @vals) = @_;
  push @$l_ref, @vals;
}

my @l;
add_to_list(\@l, 10);
add_to_list(\@l, 2, 3, 4, 8);

sub filter {
  my ($filter, $filename) = @_;

  open my $fh, '<', $filename;
  my @res;

  while(my $line = <$fh>) {
    push @res, $line if $filter->($line);
  }
  close $fh;

  return @res;
}

sub longer_than { 
  my ($size) = @_;

  return sub {
    my ($line) = @_;
    length($line) > $size;
  };
}

sub shorter_than {
  my ($size) = @_;

  return sub {
    my ($line) = @_;
    length($line) < $size;
  };
}

sub fchain {
  my @filters = @_;
  return sub {
    my ($line) = @_;
    foreach my $filter (@filters) {
      $line = $filter->($line);  
    }
    return 1;
  }
}


# Closures
sub fand {
  my @filters = @_;
  return sub {
    my ($line) = @_;
    foreach my $filter (@filters) {
      return if ! $filter->($line);
    }
    return 1;
  }
}

sub fprint { print @_ }

filter(
  fchain(\&CORE::uc, \&fprint), "/etc/shells");

my @long = filter(
  fand(longer_than(10), shorter_than(40)), "/etc/shells");


