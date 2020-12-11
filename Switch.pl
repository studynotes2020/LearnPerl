use strict;
# use warning;
use diagnostics;
use feature 'say';
use feature "switch";

no warnings 'experimental';  # mute experiment from using given

my $i = 1;

my $age_old = 18;

# switch case
given($age_old) {
    when($_ > 16) {
        say "Drive";
        continue;  # loop again
    }
    when($_ > 17) {
        say "Go Vote";  # no continue os didn't loop again
    }
    default {
        say "Nothing Special";
    }
}