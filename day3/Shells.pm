package Shells;
use Mouse;
use strict;
use warnings;
use v5.18;
no warnings 'experimental::smartmatch';

has 'shells', isa => 'ArrayRef[Str]', is => 'ro', lazy_build => 1;
has 'shells_file', is => 'ro', default => '/etc/shells';

sub _build_shells {
  my ($self) = @_;
  my $filename = $self->shells_file;
  my @res;

  open my $fh, '<', $filename;
  while (<$fh>) {
    chomp;
    next if /^\s*#/;
    push @res, $_; 
  }

  close $fh;
  return \@res;
}

sub is_installed {
  my ($self, $shell) = @_;
  $shell ~~ @{$self->shells};
}

1;
