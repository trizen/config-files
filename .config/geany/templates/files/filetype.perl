#!/usr/bin/perl

use 5.020;
use strict;
use warnings;

use Math::GMPz;
use Math::AnyNum;
use ntheory qw(:all);
use experimental qw(signatures);

sub foo ($n) {

}

foreach my $n(1..10) {
    say "a($n) = ", foo($n);
}
