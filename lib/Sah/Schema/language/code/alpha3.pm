package Sah::Schema::language::code::alpha3;

# DATE
# VERSION

use Locale::Codes::Language_Codes ();

my $codes = [sort (
    keys(%{ $Locale::Codes::Data{'language'}{'code2id'}{'alpha-3'} }),
)];
die "Can't extract language codes from Locale::Codes::Language_Codes"
    unless @$codes;

our $schema = [str => {
    summary => 'Language code (alpha-3)',
    description => <<'_',

Accept only current (not retired) codes. Only alpha-3 codes are accepted.

_
    match => '\A[a-z]{3}\z',
    in => $codes,
    'x.perl.coerce_rules' => ['str_tolower'],
}, {}];

1;
# ABSTRACT:

=head1 SEE ALSO

L<Sah::Schema::language::code::alpha2>

L<Sah::Schema::language::code>
