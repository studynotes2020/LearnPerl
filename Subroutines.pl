use strict;
# use warning;
use diagnostics;
use feature 'say';
use feature "switch";
use v5.28;

sub get_random {
  return int(rand 11);
}

say "Random Number ", get_random();

sub get_random_max {
  my ($max_num) = @_;  # save data from argument
  $max_num ||= 11;  # default 11
  return int(rand $max_num);
}
say "Random Number ", get_random_max(100);

sub get_sum {
  my ($num_1, $num_2) = @_;  # get two arguments

  $num_1 ||= 1;  # default
  $num_2 ||= 2;

  return $num_1 + $num_2;
}

sub sum_many {
  my $sum = 0;
  foreach my $val (@_) {
    $sum += $val;
  }
  return $sum;
}
say "Sum : ", sum_many(1,2,3,4,5);

sub increment {
  state $execute_total = 0;
  $execute_total++;
  say "Executed $execute_total times";
}
increment();
increment();

sub double_array {
  my @number_array = @_;
  $_ *= 2 for @number_array;
  return @number_array;
}

my @rand_array = (1,2,3,4,5);
print join(", ", double_array(@rand_array)), "\n";

sub get_mults {
  my ($rand_num) = @_;
  $rand_num ||= 1;
  return $rand_num * 2, $rand_num * 3;
}

my ($dbl_num, $trip_num) = get_mults(3);

say "$dbl_num, $trip_num";

sub factorial {
  my ($num) = @_;
  return 0 if $num <= 0;
  return 1 if $num == 1;
  return $num * factorial($num - 1);
}
say "Factorial 4 = ", factorial(4);
