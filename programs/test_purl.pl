#!/usr/bin/perl 
#### # This is a very basic test to try to add some cURL like functionality in perl.  ### # Created: Thu 10/13/2022 05:15:19 PM # By: JB Williams
use strict;
use warnings;
use diagnostics;
#use Data::Dumper;
use Getopt::Std;
use HTTP::Tiny;
 
no warnings 'uninitialized';
#### Basic TODO's #####
# [x] - print response code
#   [x] - out to file
#
# [x] - print headers ( random 0, not sure where from )
#   [ ] - out to file ( giving a random 0, not sure where it comes from, only 0 writes to file )
#
# [x] - browser content
#   [x] - out to file


#$| = 1;
sub get_help {
    print STDOUT <<HELP;
Usage:
    perl pURL.pl [args]

Example:
    perl pURL.pl -[flags] -o [/output/location/file.txt] -u [url]
ha:bco:qrt:u:w:
Flags:
    -h      help menu(this menu)
    -H      Browser Headers
    -c      GET HTML of page
    -o      Output file (absolute path) - doesn't work with headers ATM.
    -r      Response Code
    -s      Change to HTTPS
    -u      Base URL
HELP

exit;
};

sub get_absolute_URL {
    my ($url_arg) = @_;

    if ( $url_arg !~ m/http:\/\// ) {
        $url_arg = "http://".$url_arg;
    }
    return $url_arg;
};

sub get_headers {
    my ($browser) = @_;
    while (my ($k, $v) = each %{$browser->{headers}}) {
        for (ref $v eq 'ARRAY' ? @$v : $v) {
    ##my @myheader = "$k: $_\n";
    #my @header = <STDOUT>;
        print "$k: $_\n";
    
        #return @header;
    ##return @myheader;
    ##print "$k: $_\n";
    ##return "$k: $_\n";
        }
    }
    #return @myheader;
};

sub change_https {
    my ($url_string) = @_;

    substr($url_string, 4, 0) = 's';
    return $url_string;
}

sub write_to_file {
    my ($location, $data) = @_;

    open my $fh, ">>", $location || die $!;
    print $fh $data;
   #return $fh $info;

    close($location);
};

my %options = ();
getopts("hbco:rsu:w:", \%options);
get_help() if defined $options{h};
my $url             = get_absolute_URL($options{u}) if defined $options{u} || die "Please use the -u flag to pass in a url. Use -h for help.\n";
$url                = change_https($url) if defined $options{s};
my $browser         = HTTP::Tiny->new->get($url);
my $response        = "$browser->{status} $browser->{reason}" if defined $options{r};
#my @Headers         = get_headers($browser) if defined $options{b};
my $header          = HTTP::Tiny->new->head($url);
my $content         = "$browser->{content}" if defined $options{c};
my @info = ($response, $header, $content);
foreach my $data (@info) {
    write_to_file($options{o}, $data) if defined $options{o};
    print "$data\n"; 
};
