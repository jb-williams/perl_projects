#!/usr/bin/perl
###
# This is a very basic test to try to add some cURL like functionality in perl.
###
# Created: Thu 10/13/2022 05:15:19 PM 
# By: JB Williams

use strict;
use warnings;
use Getopt::Std;
use HTTP::Tiny;
 
sub get_help {
    print STDOUT <<HELP;
Usage:
    perl pURL.pl [args]

Example:
    perl pURL.pl [flags] -u [url]
ha:bco:qrt:u:w:
Flags:
    -h      help menu(this menu)
    -a      Response Code, Header, Content
    -b      Browser Response Header
    -c      GET HTML of page
    -r      Response Code
    -u      Base URL
HELP

exit;
}

sub get_absolute_URL {
    my ($url_arg) = @_;

    if ( $url_arg !~ m/http:\/\// ) {
        $url_arg = "http://".$url_arg;
    }
    return $url_arg;
}

sub get_response_code {
    my ($browser) = @_;
    print "$browser->{status} $browser->{reason}\n";
}

sub get_headers {
    my ($browser) = @_;
    while (my ($k, $v) = each %{$browser->{headers}}) {
        for (ref $v eq 'ARRAY' ? @$v : $v) {
            print "$k: $_\n";
        }
    }
}

sub get_content {
    my ($browser) = @_;
    print $browser->{content} if length $browser->{content};
}

sub get_all {
    my ($browser) = @_;
    get_response_code($browser);
    get_headers($browser);
    get_content($browser);
}

my %options = ();
getopts("habco:ru:w:", \%options);
get_help() if defined $options{h};
my $url             = get_absolute_URL($options{u}) if defined $options{u} || die "Please use the -u flag to pass in a url. Use -h for help.\n";
my $browser         = HTTP::Tiny->new->get($url);

if ($options{a}) {
    get_all($browser) if defined $options{a};
}
if ($options{r}) {
    get_response_code($browser) if defined $options{r};
}
if ($options{b}) {
    get_headers($browser) if defined $options{b};
}
if ($options{c}) {
    get_content($browser) if defined $options{c};
}
