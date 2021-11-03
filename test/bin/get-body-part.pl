#!/usr/bin/perl

use strict;

my $enable = 0;
open (IN, "data/bodies/crasis");
while (<IN>) {
    if (/local -A TOKEN_TYPES/) {
        $enable = 1;
    } elsif (/local -a ZCR_PB_WORDS ZCR_PB_SPACES ZCR_PB_WORDS_BEGINNINGS ZCR_PB_ALL/) {
        $enable = 0;
        print;
    }

    if ($enable) {
        print;
    }
}
close IN;
