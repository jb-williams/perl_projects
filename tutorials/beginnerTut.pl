#!/usr/bin/env perl
use 5.010;
say "hello world!!";
# this is a comment
print "hello world!!";

# diff between single and double quotes

$website="Beginnersbook";
print "Website Name: $website\n";
print 'Website Name: $website\n';

# backslash stuffs, escapes special chars and things line newline
$msg = "Hellow this is \"My blog\"";
print "$msg\n";

# playing with data types
#
$age=34;
$name="jb";
print "$age\n";
print "$name\n";

## Scalars
$num1=51;
$str1="beginnersbook";
$num2=2.9;
$str2="hello";
print "$num1\n";
print "$str1\n";
print "$num2\n";
print "$str2\n";

## Arrays
@pincode = (301019, 282005, 101010);
print "\$pincode[0] = $pincode[0]\n";

## Hashes
%age = ('jb', 34, 'rae', 30, 'mom', 70);
print "\$age{'rae'}: $age{'rae'}\n";
print "\$age{'jb'}: $age{'jb'}\n";
print "\$age{'mom'}: $age{'mom'}\n";

# better way
%ages = ('jb' => 34, 'rae'=> 30, 'mom' => 70);
my @k = keys %ages;
print "Keys: @k\n";

my @k = values %age;
print "Values: @k\n";

# own function
while ( ($key, $value) = each %age ) {
    print "Key: $key, Value: $value\n";
}
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
