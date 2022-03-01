use strict;
use warnings;

use Data::Commons::Vote::Image;
use Data::Commons::Vote::User;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Test.
my $uploader = Data::Commons::Vote::User->new(
	'name' => 'Zuzana Zonova',
);
my $obj = Data::Commons::Vote::Image->new(
	'image' => 'Michal from Czechia.jpg',
	'uploader' => $uploader,
);
is($obj->comment, undef, 'Get comment (undef = default).');

# Test.
$obj = Data::Commons::Vote::Image->new(
	'author' => 'Zuzana Zonova',
	'comment' => 'Contemporary male portrait in black and white.',
	'image' => 'Michal from Czechia.jpg',
	'uploader' => $uploader,
);
is($obj->comment, 'Contemporary male portrait in black and white.', 'Get comment.');
