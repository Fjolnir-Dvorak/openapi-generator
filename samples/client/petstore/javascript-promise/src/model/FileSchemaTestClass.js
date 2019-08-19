/**
 * OpenAPI Petstore
 * This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
 *
 * The version of the OpenAPI document: 1.0.0
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 *
 * OpenAPI Generator version: 4.1.1-SNAPSHOT
 *
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['ApiClient'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'));
  } else {
    // Browser globals (root is window)
    if (!root.OpenApiPetstore) {
      root.OpenApiPetstore = {};
    }
    root.OpenApiPetstore.FileSchemaTestClass = factory(root.OpenApiPetstore.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';



  /**
   * The FileSchemaTestClass model module.
   * @module model/FileSchemaTestClass
   * @version 1.0.0
   */

  /**
   * Constructs a new <code>FileSchemaTestClass</code>.
   * @alias module:model/FileSchemaTestClass
   * @class
   */
  var exports = function() {
    var _this = this;

  };

  /**
   * Constructs a <code>FileSchemaTestClass</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/FileSchemaTestClass} obj Optional instance to populate.
   * @return {module:model/FileSchemaTestClass} The populated <code>FileSchemaTestClass</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();
      if (data.hasOwnProperty('file')) {
        obj['file'] = File.constructFromObject(data['file']);
      }
      if (data.hasOwnProperty('files')) {
        obj['files'] = ApiClient.convertToType(data['files'], [File]);
      }
    }
    return obj;
  }

  /**
   * @member {File} file
   */
  exports.prototype['file'] = undefined;
  /**
   * @member {Array.<File>} files
   */
  exports.prototype['files'] = undefined;



  return exports;
}));


