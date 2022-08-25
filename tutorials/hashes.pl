#!/usr/bin/env perl
# hashes in perl
#
%age = ('Chaitanya Singh', 29, 'Ajeet', 28, 'Lisa', 25);

print "\$age{'Lisa'}: $age{'Lisa'}\n";
print "\$age{'Chaitanya Singh'}: $age{'Chaitanya Singh'}\n";
print "\$age{'Ajeet'}: $age{'Ajeet'}\n";

# creating a hash
%age = ('Chaitanya Singh', 29, 'Ajeet', 28, 'Lisa', 25);
# method 2
%age = ('Chaitanya Singh' => 29, 'Ajeet' => 28, 'Lisa' => 25);

# key functions
#
# this returns list of keys in hash
%age = ('Chaitanya Singh' => 29, 'Ajeet' => 28, 'Lisa' => 25);
my @k = keys %age;
print "Keys: @k\n";

# Values functions
#
# this returns list of values in a hash
%age = ('Chaitanya Singh' => 29, 'Ajeet' => 28, 'Lisa' => 25);
my @k = values %age;
print "Values: @k\n";

# each funciton used to iterat over a hash generally in while loop
%age = ('Chaitanya Singh' => 29, 'Ajeet' => 28, 'Lisa' => 25);
while ( ($key, $value) = each %age ) {
    print "Key: $key, Value: $value\n";
}


