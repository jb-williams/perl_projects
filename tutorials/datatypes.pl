#!/usr/bin/env perl
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
