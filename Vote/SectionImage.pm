package Data::Commons::Vote::SectionImage;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_isa check_length check_number check_required);

our $VERSION = 0.01;

has image => (
	is => 'ro',
);

has section_id => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check image.
	check_required($self, 'image');
	check_isa($self, 'Data::Common::Vote::Image');

	# Check section id.
	check_required($self, 'section_id');
	check_number($self, 'section_id');

	return;
}

1;

__END__
