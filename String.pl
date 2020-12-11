use strict;
# use warning;
use diagnostics;
use feature 'say';
use feature "switch";
use v5.28;

my $long_string = "Random Long String";

say "Length of String ", length $long_string;
printf("Long is at %d \n", index $long_string, "Long");
printf("Last g is at %d \n", rindex $long_string, "g");

$long_string = $long_string . ' isn\'t that long';
say "Index 7 through 10 ", substr $long_string, 7, 4;

my $animal = "animals";

printf("Last character is %s\n", chop $animal);

my $no_newline = "No Newline\n";
chomp $no_newline;  # remove newline

printf("Uppercase : %s \n", uc $long_string);
printf("Lowercase : %s \n", lc $long_string);
printf("1st Uppercase : %s \n", ucfirst $long_string);

$long_string =~ s/ /, /g;  # replace spaces with commas, /g for all, if no /g just first found
say $long_string;

my $two_times = "What I said is " x 2;
say $two_times;

my @abcs = ('a' .. 'z');
print join(", ", @abcs), "\n";

my $letter = 'c';
say "Next Letter ", ++$letter;
