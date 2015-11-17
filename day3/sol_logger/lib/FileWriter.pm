package FileWriter;

use Mouse;
use autodie;
use IO::Handle;
use Writer;

has 'file', required => 1, is => 'ro', isa => 'Str';
has 'fh', lazy_build => 1, is => 'ro';

with 'Writer';

sub _build_fh {
  my ($self) = @_;
  open my $fh, '>>', $self->file();

  # Disable buffering for file handle $fh
  #
  # my $old = select($fh);
  # $| = 1;
  # select($old);

  # Same as:
  # select((select($fh),$|=1)[0]);

  # Same as:
  $fh->autoflush();

  return $fh;
}

sub write {
  my ($self, @text) = @_;
  print {$self->fh} @text, "\n";
}

1;
