package ONVIF::Analytics::Types::Date;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Year_of :ATTR(:get<Year>);
my %Month_of :ATTR(:get<Month>);
my %Day_of :ATTR(:get<Day>);

__PACKAGE__->_factory(
    [ qw(        Year
        Month
        Day

    ) ],
    {
        'Year' => \%Year_of,
        'Month' => \%Month_of,
        'Day' => \%Day_of,
    },
    {
        'Year' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'Month' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'Day' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
    },
    {

        'Year' => 'Year',
        'Month' => 'Month',
        'Day' => 'Day',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Analytics::Types::Date

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Date from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Year


=item * Month


=item * Day




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Analytics::Types::Date
   Year =>  $some_value, # int
   Month =>  $some_value, # int
   Day =>  $some_value, # int
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

