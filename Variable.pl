use strict;
# use warning;
use diagnostics;
use feature 'say';
use feature "switch";

print "Hello World\n";  # print need to add newline yourself
my $name = 'Derek';
my ($age, $street) = (40, '123 Main St');
my $my_info = "$name lives on \"street\"\n";
$my_info = qq{$name lives on "$street"\n};  # qq working with double quotes without escaping them

print $my_info;

my $bunch_on_info = <<"END";
This is a
bunch of information
on multiple lines
END

say $bunch_on_info;

my $big_int = 18446744073709551615;  # biggest num in perl

# %c : Character
# %s : String
# %d : Decimal
# %u : Unsigned integer
# %f : Floating Point (Decimal Notation)
# %e : Floating Point (Scientific Notation)

printf("%u \n", $big_int + 1);  

my $big_float = .1000000000000001;
printf("%.16f \n", $big_float + 0.1000000000000001);

my $first = 1;
my $second = 2;
($first, $second) = ($second, $first);

say "$first, $second";


