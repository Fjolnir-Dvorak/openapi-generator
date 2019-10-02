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

use_ok('WWW::OpenAPIClient::StoreApi');

my $api = WWW::OpenAPIClient::StoreApi->new();
isa_ok($api, 'WWW::OpenAPIClient::StoreApi');

#
# delete_order test
#
{
    my $order_id = undef; # replace NULL with a proper value
    my $result = $api->delete_order(order_id => $order_id);
}

#
# get_inventory test
#
{
    my $result = $api->get_inventory();
}

#
# get_order_by_id test
#
{
    my $order_id = undef; # replace NULL with a proper value
    my $result = $api->get_order_by_id(order_id => $order_id);
}

#
# place_order test
#
{
    my $body = undef; # replace NULL with a proper value
    my $result = $api->place_order(body => $body);
}


1;
