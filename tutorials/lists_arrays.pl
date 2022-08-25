#!/usr/bin/env perl
# how to define arrays

@friends = ("Ajeet", "Chaitanya", "Rahul");
# or
@friends = qw(Ajeet Chaitanya Rahul); # same as above
# or
@friends = qw/Ajeet Chaitanya Rahul/; # same as above

# all the following statements are the same
@friends = qw/Ajeet Chaitanya Rahul/;
@friends = qw!Ajeet Chaitanya Rahul!;
#@friends = qw;
@friends = qw{Ajeet Chaitanya Rahul};
@friends = qw[Ajeet Chaitanya Rahul];

# Accessing arrays
@friends = ("Ajeet", "Chaitanya", "Rahul");

print "\$friends[0] = $friends[0]\n";
print "\$friends[1] = $friends[1]\n";
print "\$friends[2] = $friends[2]\n";

# Range Operators
@num = (3..9); # same as (3, 4, 5, 6, 7, 8, 9)
foreach $temp (@num) {
    print "$temp\n";
}
# (2.9..7.9) # same as (2, 3, 4, 5, 6, 7), values after decimal are truncated
# (9..3) # empty list, only works in increasing order
# (1, 3..6, 10, 12..14) # same as (1, 3, 4, 5, 6, 10, 12, 13, 14),
#

# Operators: pop and push
# pop removes the last element from an array and returns it.
@num = (3..7); # same as (3, 4, 5, 6, 7)
$n1 = pop(@num); # $n1 is 7, array is (3, 4, 5, 6)
$n2 = pop(@num); # $n2 is 6, array is (3, 4, 5)
print "\$n1 is: $n1\n";
print "\$n2 is: $n2\n";
print "array now has:\n";
foreach $temp (@num) {
    print "$temp\n";
}
pop @num; # 5 is discarded, array is (3, 4)
print "array now has:\n";
foreach $temp (@num) {
    print "$temp\n";
}

# push adds an element to the end of the array
@num = (10..12); # same as (10, 11, 12)
push (@num, 9); # array is (10,11,12,9)
push (@num, 6); # array is (10,11,12,9,6)
print "array now has:\n";
foreach $temp (@num) {
    print "$temp\n";
}
@num2 = (11, 22, 33);
push (@num, @num2); # adding another array to the end
print "array now has:\n";
foreach $temp (@num) {
    print "$temp\n";
}

# Shift similar to pop but performs action on beginning of array
@num = (3..7); # same as (3,4,5,6,7)
$n1 = shift(@num); # $n1 is 3, array is (4,5,6,7)
$n2 = shift(@num); # $n2 is 4, array is (5,6,7)
print "\$n1 is: $n1\n";
print "\$n2 is: $n2\n";
print "array now has:\n";
foreach $temp (@num) {
    print "$temp\n";
}
shift @num; # 5 is discarded, array is (6,7)
print "array now has:\n";
foreach $temp (@num) {
    print "$temp\n";
}

# unshift similer to push but at beggining of array
@num = (10..12); # same as (10,11,12)
unshift (@num, 9); # array is (9,10,11,12)
unshift (@num, 6); # array is (6,9,10,11,12)
print "array now has:\n";
foreach $temp (@num) {
    print "$temp\n";
}
@num2 = (11, 22, 33);
unshift (@num, @num2); # adding another array to the beginning
print "array now has:\n";
foreach $temp (@num) {
    print "$temp\n";
}

# Splice Operator
# used to put things into middle of array
# can take up to 4 arguments
# Arg 1 array name
# Arg 2 is starting point
# Arg 3 is the length
# Arg 4 is another list or array
#syntax
# splice @array_name, s, l, @another_array

@myarray = qw(Rahul, Joe, Ajeet, Tim, Lisa);
@myvar = splice @array, 2;
# removes everything after ajeet
# @myarray is qw(Rahul, Joe, Ajeet)
# @myvar is qw(Tim, Lisa)
# Arg 3 and 4 are optional
#
# arg 3
@myarray = qw(Rahul, Joe, Ajeet, Tim, Lisa);
@myvar = splice @array, 2, 1;
# removes only one element after Ajeet
# @myarray is qw(Rahul, Joe, Ajeet, Harsh, Alisha, Lisa)
# @myvar is qw(Tim)

@myarray = qw(Rahul, Joe, Ajeet, Tim, Lisa);
@myvar = splice @array, 2, 1, qw(Harsh, Alisha);
# removes only one element after Ajeet
# inserts the provided list at the same position
# @myarray is qw(Rahul, Joe, Ajeet, Harsh, Alisha, Lisa)
# @myvar is qw(Tim)

# to just add not remove
#
@myarray = qw(Rahul, Joe, Ajeet, Tim, Lisa);
@myvar = splice @array, 2, 0, qw(Harsh, Alisha);
# removes nothing
# inserts the provided list at the starting point
# @myarray is qw(Rahul, Joe, Ajeet, Harsh, Alisha, Tim, Lisa)
# @myvar is qw()

# Reverse Operator
@myarray = 10..15; # same as (10,11,12,13,14,15)
@myarray2 = reverse @myarray; # @myarray2 has (15,14,13,12,11,10)
@myarray3 = reverse 5..9; # @myarray3 has (9,8,7,6,5)

# reverse and store into same array
@myarray = 10..15;
@myarray = reverse @myarray;
# v this will not work
# reverse @myarray;
