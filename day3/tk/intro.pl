use strict;
use warnings;
use v5.18;
use Tk;

my $label;
my $counter = 0;

sub onclick {
  $counter++;
  $label->configure(-text => "Count: $counter");
}


my $root = MainWindow->new;
$label = $root->Label(-text => "Hello World");
my $btn   = $root->Button(
  -text => "Click Me",
  -command => \&onclick,
);

$label->pack();
$btn->pack();

MainLoop;
