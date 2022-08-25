#!/usr/bin/env perl
#
# copied for practice from TerminalForLife's Github
# https://github.com/terminalforlife
#
# Script to display only warning messages that match regex 'warning' 'error' 'fail'
#
# Usage:    sysd_log_parse.pl file.log
#
require List::MoreUtils;

use strict;
use warnings;
use autodie;
use List::MoreUtils 'uniq';

my @Lines;
while (my $Line = <>) {
    $Line =~ /(fail|error|warning)/ia or next;

    my @Cols = split(' ', $Line);
    @Cols = @Cols[4..$#Cols];
    $Line = map("$_ ", @Cols);
    push(@Lines, join(' ', @Cols))
}
print("$_\n") foreach uniq(@Lines)
