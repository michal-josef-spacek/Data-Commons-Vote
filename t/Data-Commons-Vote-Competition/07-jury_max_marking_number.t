use strict;
use warnings;

use Data::Commons::Vote::Competition;
use DateTime;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Test.
my $obj = Data::Commons::Vote::Competition->new(
	'dt_from' => DateTime->new(
                 'day' => 14,
                 'month' => 7,
                 'year' => 2009,
	),
	'dt_to' => DateTime->new(
                 'day' => 26,
                 'month' => 7,
                 'year' => 2009,
	),
	'jury_voting' => 1,
	'name' => 'Example competition',
	'public_voting' => 0,
);
is($obj->jury_max_marking_number, 5, 'Get maximum number for jury marking (5 - default).');

# Test.
$obj = Data::Commons::Vote::Competition->new(
	'dt_from' => DateTime->new(
                 'day' => 14,
                 'month' => 7,
                 'year' => 2009,
	),
	'dt_to' => DateTime->new(
                 'day' => 26,
                 'month' => 7,
                 'year' => 2009,
	),
	'jury_voting' => 1,
	'jury_max_marking_number' => 5,
	'name' => 'Example competition',
	'public_voting' => 0,
);
is($obj->jury_max_marking_number, 5, 'Get maximum number for jury marking (5).');