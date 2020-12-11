use strict;
# use warning;
use diagnostics;
use feature 'say';
use feature "switch";
use v5.28;

# declare hash table
my %employees = (
"Sue"=>35,
"Paul"=>43,
"Sam"=>39
);
printf("Sue is %d \n", $employees{Sue});

$employees{Frank} = 44;  # add entry

while (my ($k, $v)=each %employees) {print "$k, $v\n"}

my @ages = @employees{"Sue", "Sam"};
say @ages;

my @hash_array = %employees;  # convert hash to array

delete $employees{'Frank'};  # delete one key
while (my ($k, $v)=each %employees) {print "$k $v\n"}

say ((exists $employees{"Sam"}) ? "Sam is here" : "No Sam");  # check existence

for my $key (keys %employees) {
  if($employees{$key} == 35) {
    say "Hi Sue";
  }
}
