package Screen;
use strict;
use warnings;
use Mouse;
use Writer;

with 'Writer';

sub write {
  my ($self, @text) = @_;
  print @text, "\n";
}

1;
