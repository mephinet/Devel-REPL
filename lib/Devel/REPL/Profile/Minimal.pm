package Devel::REPL::Profile::Minimal;

use Moose;
use namespace::autoclean;

with 'Devel::REPL::Profile';

sub plugins {
  qw(History Packages Commands);
}

sub apply_profile {
  my ($self, $repl) = @_;
  $repl->load_plugin($_) for $self->plugins;
}

1;
