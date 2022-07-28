use strict;
use warnings;

use Data::Commons::Vote::Person;
use Test::More 'tests' => 3;
use Test::NoWarnings;
use Unicode::UTF8 qw(decode_utf8);

# Test.
my $obj = Data::Commons::Vote::Person->new;
is($obj->name, undef, 'Get name (undef - default).');

# Test.
$obj = Data::Commons::Vote::Person->new(
	'name' => decode_utf8('Michal Josef Špaček'),
);
is($obj->name, decode_utf8('Michal Josef Špaček'), 'Get name (Michal Josef Špaček).');
