use strict;
# use warning;
use diagnostics;
use feature 'say';
use feature "switch";
use v5.28;

my $emp_file = 'employees.txt';

# open for reading
open my $fh, '<', $emp_file or die "Can't Open File : $_";
while(my $info = <$fh>) {
  chomp($info);  # remove newline
  my ($emp_name, $job, $id) = split /:/, $info;
  print "$emp_name is a $job and has the id $id \n";
}
close $fh or die "Couldn't Close File : $_";

# open for appending
open $fh, '>>', $emp_file or die "Can't Open File : $_";
print $fh "Mark:Salesman:124\n";

# open to write at the beginning
open $fh, '+<', $emp_file or die "Can't Open File : $_";
seek $fh, 0, 0;
print $fh "Phil:Salesman:125\n";
