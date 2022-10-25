use strict;
use warnings;

use Test::More 'tests' => 3;
use Test::NoWarnings;

BEGIN {

	# Test.
	use_ok('Data::Commons::Vote::CompetitionValidationOption');
}

# Test.
require_ok('Data::Commons::Vote::CompetitionValidationOption');
