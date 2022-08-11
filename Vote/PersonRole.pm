package Data::Commons::Vote::PersonRole;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_isa);

our $VERSION = 0.01;

has competition => (
	is => 'ro',
);

has person => (
	is => 'ro',
);

has role => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check competition.
	check_isa($self, 'competition', 'Data::Commons::Vote::Competition');

	# Check user.
	check_isa($self, 'person', 'Data::Commons::Vote::Person');

	# Check role.
	check_isa($self, 'role', 'Data::Commons::Vote::Role');

	return;
}

1;

__END__
