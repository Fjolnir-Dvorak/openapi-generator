=begin comment

OpenAPI Petstore

This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator
# Please update the test cases below to test the API endpoints.
# Ref: https://openapi-generator.tech
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::OpenAPIClient::FakeApi');

my $api = WWW::OpenAPIClient::FakeApi->new();
isa_ok($api, 'WWW::OpenAPIClient::FakeApi');

#
# create_xml_item test
#
{
    my $xml_item = undef; # replace NULL with a proper value
    my $result = $api->create_xml_item(xml_item => $xml_item);
}

#
# fake_outer_boolean_serialize test
#
{
    my $body = undef; # replace NULL with a proper value
    my $result = $api->fake_outer_boolean_serialize(body => $body);
}

#
# fake_outer_composite_serialize test
#
{
    my $body = undef; # replace NULL with a proper value
    my $result = $api->fake_outer_composite_serialize(body => $body);
}

#
# fake_outer_number_serialize test
#
{
    my $body = undef; # replace NULL with a proper value
    my $result = $api->fake_outer_number_serialize(body => $body);
}

#
# fake_outer_string_serialize test
#
{
    my $body = undef; # replace NULL with a proper value
    my $result = $api->fake_outer_string_serialize(body => $body);
}

#
# test_body_with_file_schema test
#
{
    my $body = undef; # replace NULL with a proper value
    my $result = $api->test_body_with_file_schema(body => $body);
}

#
# test_body_with_query_params test
#
{
    my $query = undef; # replace NULL with a proper value
    my $body = undef; # replace NULL with a proper value
    my $result = $api->test_body_with_query_params(query => $query, body => $body);
}

#
# test_client_model test
#
{
    my $body = undef; # replace NULL with a proper value
    my $result = $api->test_client_model(body => $body);
}

#
# test_endpoint_parameters test
#
{
    my $number = undef; # replace NULL with a proper value
    my $double = undef; # replace NULL with a proper value
    my $pattern_without_delimiter = undef; # replace NULL with a proper value
    my $byte = undef; # replace NULL with a proper value
    my $integer = undef; # replace NULL with a proper value
    my $int32 = undef; # replace NULL with a proper value
    my $int64 = undef; # replace NULL with a proper value
    my $float = undef; # replace NULL with a proper value
    my $string = undef; # replace NULL with a proper value
    my $binary = undef; # replace NULL with a proper value
    my $date = undef; # replace NULL with a proper value
    my $date_time = undef; # replace NULL with a proper value
    my $password = undef; # replace NULL with a proper value
    my $callback = undef; # replace NULL with a proper value
    my $result = $api->test_endpoint_parameters(number => $number, double => $double, pattern_without_delimiter => $pattern_without_delimiter, byte => $byte, integer => $integer, int32 => $int32, int64 => $int64, float => $float, string => $string, binary => $binary, date => $date, date_time => $date_time, password => $password, callback => $callback);
}

#
# test_enum_parameters test
#
{
    my $enum_header_string_array = undef; # replace NULL with a proper value
    my $enum_header_string = undef; # replace NULL with a proper value
    my $enum_query_string_array = undef; # replace NULL with a proper value
    my $enum_query_string = undef; # replace NULL with a proper value
    my $enum_query_integer = undef; # replace NULL with a proper value
    my $enum_query_double = undef; # replace NULL with a proper value
    my $enum_form_string_array = undef; # replace NULL with a proper value
    my $enum_form_string = undef; # replace NULL with a proper value
    my $result = $api->test_enum_parameters(enum_header_string_array => $enum_header_string_array, enum_header_string => $enum_header_string, enum_query_string_array => $enum_query_string_array, enum_query_string => $enum_query_string, enum_query_integer => $enum_query_integer, enum_query_double => $enum_query_double, enum_form_string_array => $enum_form_string_array, enum_form_string => $enum_form_string);
}

#
# test_group_parameters test
#
{
    my $required_string_group = undef; # replace NULL with a proper value
    my $required_boolean_group = undef; # replace NULL with a proper value
    my $required_int64_group = undef; # replace NULL with a proper value
    my $string_group = undef; # replace NULL with a proper value
    my $boolean_group = undef; # replace NULL with a proper value
    my $int64_group = undef; # replace NULL with a proper value
    my $result = $api->test_group_parameters(required_string_group => $required_string_group, required_boolean_group => $required_boolean_group, required_int64_group => $required_int64_group, string_group => $string_group, boolean_group => $boolean_group, int64_group => $int64_group);
}

#
# test_inline_additional_properties test
#
{
    my $param = undef; # replace NULL with a proper value
    my $result = $api->test_inline_additional_properties(param => $param);
}

#
# test_json_form_data test
#
{
    my $param = undef; # replace NULL with a proper value
    my $param2 = undef; # replace NULL with a proper value
    my $result = $api->test_json_form_data(param => $param, param2 => $param2);
}

#
# test_query_parameter_collection_format test
#
{
    my $pipe = undef; # replace NULL with a proper value
    my $ioutil = undef; # replace NULL with a proper value
    my $http = undef; # replace NULL with a proper value
    my $url = undef; # replace NULL with a proper value
    my $context = undef; # replace NULL with a proper value
    my $result = $api->test_query_parameter_collection_format(pipe => $pipe, ioutil => $ioutil, http => $http, url => $url, context => $context);
}


1;
