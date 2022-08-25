#!/usr/bin/env perl

use v5.16;
use strict;
use warnings;
use diagnostics;

use feature 'say';
use feature 'switch';

# Commentsss
print "Hello World\n";

## Scalars
# chars strings or numbers
my $name = 'Jb';

my ($age, $street) = (40, '123 Main Str');

my $my_info = "$name lives on \"$street\"\n";
print $my_info;

$my_info = qq{$name lives on "$street"\n};
print $my_info;

my $bunch_of_info = <<"END";
this is a
bunch of info
on multiple lines
END

say $bunch_of_info;

# perl's largest int, 20 digits accurately
my $big_int = 18446744073709551615;
printf("%u \n", $big_int);

## Printf format
#
# %c : character
# %s : string
# %d : decimal
# %u : unsigned integer
# %f : floating point (decimal notation)
# %e : floating point (scientific notation)

# will not increment because its the larges num perl can save
printf("%u \n", $big_int + 1);

# cant trust up to 16 digits acurately in a float
my $big_float = .1000000000000001;
printf("%.16f \n", $big_float);

printf("%.16f \n", $big_float + .1000000000000001);

my $first = 1;
my $second = 2;
say "$first $second";

($first, $second) = ($second, $first);
say "$first $second";

# Maths times
say "5 + 4 = ", 5 + 4;
say "5 - 4 = ", 5 - 4;
say "5 * 4 = ", 5 * 4;
say "5 / 4 = ", 5 / 4;
say "5 % 4 = ", 5 % 4;
say "5 ** 4 = ", 5 ** 4;

# Builtin Maths Functions
say "EXP 1 = ", exp 1;
say "HEX 10 = ", hex 10;
say "OCT 10 = ", oct 10;
say "INT 6.45 = ", int(6.25);
say "LOG 2 = ", log 2;
say "Random between 0 - 10 = ", int(rand 11);
say "SQRT 9 = ", sqrt 9;

# Assignment operators
# += -= *= /=
my $ rand_num = 5;
$rand_num += 1;
say "Number Incremented ", $rand_num;

# Prints num then increments
say "6++ = ", $rand_num++;
# Inrement then prints
say "++6 = ", ++$rand_num;
say "6-- = ", $rand_num--;
say "--6 = ", --$rand_num;

# Conditionals
# false = undef or 0 or 0.0 or "" "0"
# == != < > <= >=
# ! not, && and, || or

my $age1 = 80;
my $is_not_intoxicated = 1;
my $age_last_exam = 16;

if($age1 < 16){
    say "You can't drive";
} elsif(!$is_not_intoxicated){
    say "You can't drive";
} else {
    say "You can drive";
}

if (($age1 >= 1) && ($age1 < 16)){
    say "you can't drive";
} elsif(!$is_not_intoxicated){
    say "you can't drive";
} elsif(($age1 >= 80) && (($age1 > 100) || (($age1 - $age_last_exam) > 5))){
    say "you can't drive";
} else {
    say "you can drive";
}

# Additional operators with strings
# eq ne lt le gt ge
#
if ('a' eq 'b'){
    say "a equals b";
} else {
    say "a doesn't equal b";
}

# opposite of if
unless(!$is_not_intoxicated){
    say "Get Sober";
}

# Ternary Operator
say (($age > 18) ? "Can Vote" : "Can't Vote");

# Looping
# next is like continue, last is like break
for (my $ii = 0; $ii < 10; $ii++){
    say $ii;
}

my $i2 =1;

while($i2 < 10){
    if($i2 %2 == 0){
        $i2++;

        next;
    }

    if ($i2 == 7){last;}
    say $i2;
    $i2++;

}

my $i3 = 1;

my $lucky_num = 7;

my $guess;

do {
    say "Guess a Number Between 1 and 10";

    $guess = <STDIN>;
} while $guess != $lucky_num;

say "you guessed 7";

# switch statements
my $age_old = 18;

given($age_old){
    when($_ > 16){
        say "Drive";
        continue;
    }
    when($_ > 17){say "Go Vote";}
    default{say "Nothing Special";}
}

# String Scalars stuffs

my $long_string = "Random Long String";

say "Lenght of String ", length $long_string;

printf("Long is at %d \n", index $long_string, "Long");


printf("Long g is at %d \n", rindex $long_string, "g");

#concat
$long_string = $long_string . ' isn\'t that long';

say "Index 7 through 10 ", substr $long_string, 7, 4;

my $animal = "animals";

printf("Last caracter is %s\n", chop $animal);
