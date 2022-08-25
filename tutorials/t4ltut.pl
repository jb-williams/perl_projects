#!/usr/bin/env perl

use v5.10;
use strict;
use warnings;
use diagnostics;

## Data Types
# Scalar is an int float or string
my $Scalar = 1;

# Array is a list of elements
my @Array = ( 1, 2.0, 'string' );

# Hash is a list of key value pairs
my %Hash = ( 'key1' => 1, 'key2' => 2, 'key3' => 3 );

# using the $ to access the
# values in the context of a Scalar
say($Scalar);
say( $Array[0] );
say( $Array[1] );
say( $Array[2] );
say( $Hash{key1} );
say( $Hash{key2} );
say( $Hash{key3} );

## Statements Loops

# '$<' shows the real user value
if ( $< == 1000 ) {
    say('True');
}
elsif ( $< == 0 ) {
    say('Your are root.');
}
else {
    say('You are neither binford nor root.');
}

# or you could do this
# say('You are binford.')
# if $< == 1000

my $User = $ENV{User};
say $User;
if ( $User eq 'binford' ) {
    say();
}
