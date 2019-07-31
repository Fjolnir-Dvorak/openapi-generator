/* 
 * OpenAPI Petstore
 *
 * This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using Xunit;

using Org.OpenAPITools.Client;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Model;

namespace Org.OpenAPITools.Test
{
    /// <summary>
    ///  Class for testing AnotherFakeApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class AnotherFakeApiTests : IDisposable
    {
        private AnotherFakeApi instance;

        public AnotherFakeApiTests()
        {
            instance = new AnotherFakeApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of AnotherFakeApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOfType' AnotherFakeApi
            //Assert.IsType(typeof(AnotherFakeApi), instance, "instance is a AnotherFakeApi");
        }

        
        /// <summary>
        /// Test Call123TestSpecialTags
        /// </summary>
        [Fact]
        public void Call123TestSpecialTagsTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //ModelClient body = null;
            //var response = instance.Call123TestSpecialTags(body);
            //Assert.IsType<ModelClient> (response, "response is ModelClient");
        }
        
    }

}
