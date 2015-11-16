package My::Geometry;

use strict;
use warnings;
use Math::Trig;

use base 'Exporter';
our @EXPORT_OK = qw/rectangle_area circle_area/;

sub rectangle_area {
  my (undef,undef,$width,$height) = @_;

  $width * $height;
}

sub circle_area {
  my ($r) = @_;
  return pi * $r * $r;
}

