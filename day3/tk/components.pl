use strict;
use warnings;
use Tk;

my $entry;
my $list;

sub find {
  my $text = $entry->cget('-text');
  my @files = glob("*${text}*");
  $list->insert('end', @files);
}


my $w = MainWindow->new;
$w->Label(-text => "File Finder")->pack;
$entry = $w->Entry(-text => "Text To Find");
$entry->pack;

$list = $w->Listbox;
$list->pack;

$w->Button(-text => "Find",
  -command => \&find,
)->pack(-side => 'right');
$w->Button(-text => "Exit")->pack(-side => 'left');

MainLoop;

