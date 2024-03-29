#!/usr/bin/env perl
# PowerBall 5 nums 0-69, 1 num 0-26
# MegaMillion 5 nums 0-70, 1 num 0-26
#
use strict;
use warnings;
#
use feature 'say';
use feature 'switch';
#
say "\nChoose Wisely!\n";
say "Powerball:";
my $P_Times = 5;
while ($P_Times >= 1) {
    say "\n", int(rand 70), " ", int(rand 70),  " ",int(rand 70),  " ",int(rand 70),  " ",int(rand 70),  " ",int(rand 27);
    $P_Times -= 1;
}

say "\nMegaMillion:";
my $M_Times = 5;
while ($M_Times >= 1) {
    say "\n", int(rand 71), " ", int(rand 71),  " ",int(rand 71),  " ",int(rand 71),  " ",int(rand 71),  " ",int(rand 27);
    $M_Times -= 1;
}
say "\nGoodLuck!!\n";

