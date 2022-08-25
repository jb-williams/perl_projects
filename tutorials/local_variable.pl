#!/usr/bin/env perl
# also know as lexical variables
use strict;
use warnings;
# Wrong way
# if (1<2)
# {
# my $age = 29;
# print "$age\n"; # prints 29
# }
# print "$age\n";

# Note:
# 1) Local variables are declared using my keyword as you could see in the above program.
# 2) Since the scope of local variables are limited to the block, you can use same name local variables in different blocks without any conflicts.
# 3) The variable declared using my keyword, at the beginning of the programs right after pragmas would be accessible throughout the program. For example, the variable $age in this program is accessible though out the program.
my $age = 29;
if (1<2)
{
    print "$age\n";
}
print "$age\n";
