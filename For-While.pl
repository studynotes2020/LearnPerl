use strict;
# use warning;
use diagnostics;
use feature 'say';
use feature "switch";

for (my $i = 0; $i < 10; $i++) {
    say $i;
}

my $i = 1;

while($i < 10) {
    if ($i % 2 == 0) {
        $i++;
        next;  # continue
    }

    if ($i == 7) {last;}  # break
    say $i;
    $i++;
}

my $lucky_num = 7;
my $guess;

do {
    say "Guess a Number Between 1 and 10";
    $guess = <STDIN>;
} while ($guess != $lucky_num);

say "You Guessed 7!";
