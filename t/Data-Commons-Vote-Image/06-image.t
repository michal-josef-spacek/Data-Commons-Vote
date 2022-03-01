use strict;
use warnings;

use Data::Commons::Vote::Image;
use Data::Commons::Vote::User;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $uploader = Data::Commons::Vote::User->new(
	'name' => 'Zuzana Zonova',
);
my $obj = Data::Commons::Vote::Image->new(
	'image' => 'Michal from Czechia.jpg',
	'uploader' => $uploader,
);
is($obj->image, 'Michal from Czechia.jpg', 'Get image.');
