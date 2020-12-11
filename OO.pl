use strict;
# use warning;
use diagnostics;
use feature 'say';
use feature "switch";
use v5.28;

use lib 'lib';
use Animal::Cat;

my $whiskers = new Animal::Cat("whiskers", "Derek");
say $whiskers->getName();

$whiskers->setName("Whiskers");
say $whiskers->getName();
say $whiskers->getSound();

use Animal::Lion;
my $king = new Animal::Lion("King", "No Owner");
say $king->getSound();
