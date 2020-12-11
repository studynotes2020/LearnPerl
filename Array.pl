use strict;
# use warning;
use diagnostics;
use feature 'say';
use feature "switch";
use v5.28;

# Array
my @primes = (2,3,5,7,11,13,17);

my @my_info = ("Derek", "123 Main St", 40, 6.25);

$my_info[4] = "Banas";

for my $info (@my_info) {
  say $info;
}

foreach my $num (@primes) {
  say $num;
}

for (@my_info) {
  say $_;
}

my @my_name = @my_info[0, 4];
say @my_name;

my $items = scalar @my_info;
say $items;

my ($f_name, $address, $how_old, $height, $l_name) = @my_info;
say "$f_name $l_name";

say "Popped Value ", pop @primes;
say "Pushed Value ", push @primes, 17;
say "First Item ", shift @primes;
say "Unshifted Item ", unshift @primes, 2;
print join(", ", @primes), "\n";

say "Remove Index 0 - 2 ", splice @primes, 0, 3;
print join(", ", @primes), "\n";
print join " ", ('list', 'of', 'words', "\n");

my $customers = "Sue Sally Paul";
my @cust_array = split / /, $customers;  # split by space
print join(", ", @cust_array), "\n";

@cust_array = reverse @cust_array;
print join(", ", @cust_array), "\n";
@cust_array = reverse sort @cust_array;
print join(", ", @cust_array), "\n";

my @number_array = (1,2,3,4,5,6,7,8);
my @odds_array = grep{$_ % 2} @number_array;
print join(", ", @odds_array), "\n";

my @dbl_array = map {$_ * 2} @number_array;
print join(", ", @dbl_array), "\n";
