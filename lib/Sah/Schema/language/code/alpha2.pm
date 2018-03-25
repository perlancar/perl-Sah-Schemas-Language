package Sah::Schema::language::code::alpha2;

# DATE
# VERSION

use Locale::Codes::Language_Codes ();

my $codes = [sort (
    keys(%{ $Locale::Codes::Data{'language'}{'code2id'}{'alpha-2'} }),
)];
die "Can't extract language codes from Locale::Codes::Language_Codes"
    unless @$codes;

our $schema = [str => {
    summary => 'Language code',
    description => <<'_',

Accept only current (not retired) codes. Only alpha-2 codes are accepted.

_
    match => '\A[a-z]{2}\z',
    in => $codes,
    'x.perl.coerce_rules' => ['str_tolower'],
}, {}];

1;
# ABSTRACT:

=head1 SEE ALSO

L<Sah::Schema::language::code::alpha3>

L<Sah::Schema::language::code>
