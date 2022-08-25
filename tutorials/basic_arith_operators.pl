#!/usr/bin/env perl

use v5.10;
#use strict;
#use warnings;

## Basic Arithmetic Operators
#
my $x = -4;
my $y = 2;

$result = $x + $y;
print '+ Operator output: ' . $result . "\n";

$result = $x - $y;
print '- Operator output: ' . $result . "\n";

$result = $x / $y;
print '/ Operator output: ' . $result . "\n";

$result = $x % $y;
print '% Operator output: ' . $result . "\n";

$result = $x ** $y;
print '** Operator output: ' . $result . "\n";

## Assignment Operators
$x2 = 5;
$result2 = 10;

print "\$x2= $x2 and \$result=$result2\n";
$result2 = $x2;
print '= Operator output: ' . $result2 . "\n";

print "\$x2= $x2 and \$result2=$result2\n";
$result2 += $x2;
print '+= Operator output: ' . $result2 . "\n";

print "\$x2= $x2 and \$result2=$result2\n";
$result2 -= $x2;
print "-= Operator output: ' . $result2\n";

print "\$x2= $x2 and \$result2=$result2\n";
$result2 *= $x2;
print "*= Operator output: ' . $result2\n";

print "\$x2= $x2 and \$result2=$result2\n";
$result2 /= $x2;
print "/= Operator output: ' . $result2\n";

print "\$x2= $x2 and \$result2=$result2\n";
$result2 %= $x2;
print "%= Operator output: ' . $result2\n";

# assigning different value to $result for this operator
$result2 =2;
print "\$x2= $x2 and \$result2=$result2\n";
$result2 **= $x2;
print '**= Operator output: ' . $result2 . "\n";

## Auto-increment and Auto-decrement
$x3 = 100;
$y3 = 200;
$x3++;
$y3--;
print "Value of \$x3++ is: $x3\n";
print "Value of \$y3-- is: $y3\n";

## Logical Operators

$x4 = true;
$y4 = false;

$result4 = ($x4 and $y4);
print "\$x4 and \$y4: $result4\n";
$result4 = ($x4 && \$y4);
print "\$x4 && \$y4: $result4\n";

$result4 = ($x4 or $y4);
print "\$x4 || \$y4: $result4\n";
$result4 = ($x4 or $y4);
print "\$x4 || \$y4: $result4\n";

# point to note is that not operator works
# with 0 and 1 only.
$x4 = 0;
$result4 = not($x4);
print "not\$x4: $result4\n";
$result4 = !($x4);
print "\!\$x4: $result4\n";

## Comparison(Relational) Operators
$x4 = 3;
$y4 = 6;

if( $x4 == $y4 ){
    print "\$x4 and \$y4 are equal\n";
}else{
    print "\$x4 and \$y4 are not equal\n";
}

if( $x4 != $y4 ){
    print "\$x4 and \$y4 are not equal\n";
}else{
    print "\$x4 and \$y4 are equal\n";
}

if( $x4 > $y4 ){
    print "\$x4 is greater than \$y4\n";
}else{
    print "\$x4 is not greater than \$y4\n";
}

if( $x4 >= $y4 ){
    print "\$x4 is greater than or equal to \$y4\n";
}else{
    print "\$x4 is less than \$y4\n";
}

if( $x4 < $y4 ){
    print "\$x4 is less than \$y4\n";
}else{
    print "\$x4 is not less than \$y4\n";
}

if( $x4 <= $y4 ){
    print "\$x4 is less than or equal to \$y4\n";
}else{
    print "\$x4 is greater than \$y4\n";
}

$x = 11; #00001011
$y = 22; #00010110

$result = $x & $y;
print "\$x & \$y: $result\n";

$result = $x | $y;
print "\$x | \$y: $result\n";

$result = $x ^ $y;
print "\$x ^ \$y: $result\n";

$result = ~$x;
print "~\$xy = $result\n";

# $result = $x << 2y;
# print "\$x << 2 = $result\n";

# $result = $x >> 2y;
# print "\$x >> 2 = $result\n";

# Quote and Quote-like Operators
# There are several quote like operators in perl like q{ }, qq{ }, qw{ }, m{ }, qr{ }, s{ }{ }, tr{ }{ }, y{ }{ }.
# However only two of them are frequently used: q{ } is for single quote and qq{ } is for double quote.

# Example
# q{Welcome to beginnersbook} would return ‘Welcome to beginnersbook’
# qq{Welcome to beginnersbook} would return “Welcome to beginnersbook”

