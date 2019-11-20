/**
 * OpenAPI Petstore
 * This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
 *
 * The version of the OpenAPI document: 1.0.0
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 *
 * OpenAPI Generator version: 4.2.2-SNAPSHOT
 *
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', process.cwd()+'/src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require(process.cwd()+'/src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.OpenApiPetstore);
  }
}(this, function(expect, OpenApiPetstore) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new OpenApiPetstore.TypeHolderDefault();
  });

  var getProperty = function(object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function')
      return object[getter]();
    else
      return object[property];
  }

  var setProperty = function(object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function')
      object[setter](value);
    else
      object[property] = value;
  }

  describe('TypeHolderDefault', function() {
    it('should create an instance of TypeHolderDefault', function() {
      // uncomment below and update the code to test TypeHolderDefault
      //var instance = new OpenApiPetstore.TypeHolderDefault();
      //expect(instance).to.be.a(OpenApiPetstore.TypeHolderDefault);
    });

    it('should have the property stringItem (base name: "string_item")', function() {
      // uncomment below and update the code to test the property stringItem
      //var instance = new OpenApiPetstore.TypeHolderDefault();
      //expect(instance).to.be();
    });

    it('should have the property numberItem (base name: "number_item")', function() {
      // uncomment below and update the code to test the property numberItem
      //var instance = new OpenApiPetstore.TypeHolderDefault();
      //expect(instance).to.be();
    });

    it('should have the property integerItem (base name: "integer_item")', function() {
      // uncomment below and update the code to test the property integerItem
      //var instance = new OpenApiPetstore.TypeHolderDefault();
      //expect(instance).to.be();
    });

    it('should have the property boolItem (base name: "bool_item")', function() {
      // uncomment below and update the code to test the property boolItem
      //var instance = new OpenApiPetstore.TypeHolderDefault();
      //expect(instance).to.be();
    });

    it('should have the property arrayItem (base name: "array_item")', function() {
      // uncomment below and update the code to test the property arrayItem
      //var instance = new OpenApiPetstore.TypeHolderDefault();
      //expect(instance).to.be();
    });

  });

}));
