use v5.08;
use strict;
use warnings;

use My::Geometry qw/rectangle_area circle_area/;
use Test::More tests => 2;

# rectangle_area takes (x,y,width,height) and
# calculates the area
my $area = rectangle_area(10, 10, 30, 30);
	
# prints 900
is($area, 900, "Rectangle area == 900");
	
# takes a radius and calculate the area of a circle
$area = circle_area( 5 );
	
# prints 78.53981633974483
my $PI = 4 * atan2(1, 1);

is($area, $PI * 5 * 5 , "Circle area == PI * R^2");
