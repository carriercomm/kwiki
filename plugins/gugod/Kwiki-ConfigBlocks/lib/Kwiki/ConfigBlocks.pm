package Kwiki::ConfigBlocks;
use Kwiki::Plugin -Base;
our $VERSION = '0.03';

const class_id => 'config_blocks';
const class_title => 'Config Blocks';

field pageconf => {};

sub register {
    my $registry = shift;
    $registry->add(wafl => config => 'Kwiki::ConfigBlocks::Wafl');
}

package Kwiki::ConfigBlocks::Wafl;
use base 'Spoon::Formatter::WaflBlock';

sub to_html {
    my $conf = {};
    eval { $conf = $self->hub->config->parse_yaml($self->block_text) };
    $self->hub->config_blocks->pageconf($conf) unless $@;
    return;
}

=head1 NAME

Kwiki::ConfigBlocks - Config kwiki page behavior in the kwiki page

=head1 COPYRIGHT

Copyright 2004 by Kang-min Liu <gugod@gugod.org>.

This program is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

See <http://www.perl.com/perl/misc/Artistic.html>

=cut
