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
    // AMD. Register as an anonymous module.
    define(['ApiClient', 'model/User'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'), require('../model/User'));
  } else {
    // Browser globals (root is window)
    if (!root.OpenApiPetstore) {
      root.OpenApiPetstore = {};
    }
    root.OpenApiPetstore.UserApi = factory(root.OpenApiPetstore.ApiClient, root.OpenApiPetstore.User);
  }
}(this, function(ApiClient, User) {
  'use strict';

  /**
   * User service.
   * @module api/UserApi
   * @version 1.0.0
   */

  /**
   * Constructs a new UserApi. 
   * @alias module:api/UserApi
   * @class
   * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
   * default to {@link module:ApiClient#instance} if unspecified.
   */
  var exports = function(apiClient) {
    this.apiClient = apiClient || ApiClient.instance;



    /**
     * Create user
     * This can only be done by the logged in user.
     * @param {module:model/User} body Created user object
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with an object containing HTTP response
     */
    this.createUserWithHttpInfo = function(body) {
      var postBody = body;
      // verify the required parameter 'body' is set
      if (body === undefined || body === null) {
        throw new Error("Missing the required parameter 'body' when calling createUser");
      }

      var pathParams = {
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = [];
      var contentTypes = [];
      var accepts = [];
      var returnType = null;
      return this.apiClient.callApi(
        '/user', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null
      );
    }

    /**
     * Create user
     * This can only be done by the logged in user.
     * @param {module:model/User} body Created user object
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}
     */
    this.createUser = function(body) {
      return this.createUserWithHttpInfo(body)
        .then(function(response_and_data) {
          return response_and_data.data;
        });
    }


    /**
     * Creates list of users with given input array
     * @param {Array.<module:model/User>} body List of user object
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with an object containing HTTP response
     */
    this.createUsersWithArrayInputWithHttpInfo = function(body) {
      var postBody = body;
      // verify the required parameter 'body' is set
      if (body === undefined || body === null) {
        throw new Error("Missing the required parameter 'body' when calling createUsersWithArrayInput");
      }

      var pathParams = {
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = [];
      var contentTypes = [];
      var accepts = [];
      var returnType = null;
      return this.apiClient.callApi(
        '/user/createWithArray', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null
      );
    }

    /**
     * Creates list of users with given input array
     * @param {Array.<module:model/User>} body List of user object
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}
     */
    this.createUsersWithArrayInput = function(body) {
      return this.createUsersWithArrayInputWithHttpInfo(body)
        .then(function(response_and_data) {
          return response_and_data.data;
        });
    }


    /**
     * Creates list of users with given input array
     * @param {Array.<module:model/User>} body List of user object
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with an object containing HTTP response
     */
    this.createUsersWithListInputWithHttpInfo = function(body) {
      var postBody = body;
      // verify the required parameter 'body' is set
      if (body === undefined || body === null) {
        throw new Error("Missing the required parameter 'body' when calling createUsersWithListInput");
      }

      var pathParams = {
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = [];
      var contentTypes = [];
      var accepts = [];
      var returnType = null;
      return this.apiClient.callApi(
        '/user/createWithList', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null
      );
    }

    /**
     * Creates list of users with given input array
     * @param {Array.<module:model/User>} body List of user object
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}
     */
    this.createUsersWithListInput = function(body) {
      return this.createUsersWithListInputWithHttpInfo(body)
        .then(function(response_and_data) {
          return response_and_data.data;
        });
    }


    /**
     * Delete user
     * This can only be done by the logged in user.
     * @param {String} username The name that needs to be deleted
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with an object containing HTTP response
     */
    this.deleteUserWithHttpInfo = function(username) {
      var postBody = null;
      // verify the required parameter 'username' is set
      if (username === undefined || username === null) {
        throw new Error("Missing the required parameter 'username' when calling deleteUser");
      }

      var pathParams = {
        'username': username
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = [];
      var contentTypes = [];
      var accepts = [];
      var returnType = null;
      return this.apiClient.callApi(
        '/user/{username}', 'DELETE',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null
      );
    }

    /**
     * Delete user
     * This can only be done by the logged in user.
     * @param {String} username The name that needs to be deleted
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}
     */
    this.deleteUser = function(username) {
      return this.deleteUserWithHttpInfo(username)
        .then(function(response_and_data) {
          return response_and_data.data;
        });
    }


    /**
     * Get user by user name
     * @param {String} username The name that needs to be fetched. Use user1 for testing.
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with an object containing data of type {@link module:model/User} and HTTP response
     */
    this.getUserByNameWithHttpInfo = function(username) {
      var postBody = null;
      // verify the required parameter 'username' is set
      if (username === undefined || username === null) {
        throw new Error("Missing the required parameter 'username' when calling getUserByName");
      }

      var pathParams = {
        'username': username
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = [];
      var contentTypes = [];
      var accepts = ['application/xml', 'application/json'];
      var returnType = User;
      return this.apiClient.callApi(
        '/user/{username}', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null
      );
    }

    /**
     * Get user by user name
     * @param {String} username The name that needs to be fetched. Use user1 for testing.
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with data of type {@link module:model/User}
     */
    this.getUserByName = function(username) {
      return this.getUserByNameWithHttpInfo(username)
        .then(function(response_and_data) {
          return response_and_data.data;
        });
    }


    /**
     * Logs user into the system
     * @param {String} username The user name for login
     * @param {String} password The password for login in clear text
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with an object containing data of type {@link String} and HTTP response
     */
    this.loginUserWithHttpInfo = function(username, password) {
      var postBody = null;
      // verify the required parameter 'username' is set
      if (username === undefined || username === null) {
        throw new Error("Missing the required parameter 'username' when calling loginUser");
      }
      // verify the required parameter 'password' is set
      if (password === undefined || password === null) {
        throw new Error("Missing the required parameter 'password' when calling loginUser");
      }

      var pathParams = {
      };
      var queryParams = {
        'username': username,
        'password': password,
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = [];
      var contentTypes = [];
      var accepts = ['application/xml', 'application/json'];
      var returnType = 'String';
      return this.apiClient.callApi(
        '/user/login', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null
      );
    }

    /**
     * Logs user into the system
     * @param {String} username The user name for login
     * @param {String} password The password for login in clear text
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with data of type {@link String}
     */
    this.loginUser = function(username, password) {
      return this.loginUserWithHttpInfo(username, password)
        .then(function(response_and_data) {
          return response_and_data.data;
        });
    }


    /**
     * Logs out current logged in user session
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with an object containing HTTP response
     */
    this.logoutUserWithHttpInfo = function() {
      var postBody = null;

      var pathParams = {
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = [];
      var contentTypes = [];
      var accepts = [];
      var returnType = null;
      return this.apiClient.callApi(
        '/user/logout', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null
      );
    }

    /**
     * Logs out current logged in user session
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}
     */
    this.logoutUser = function() {
      return this.logoutUserWithHttpInfo()
        .then(function(response_and_data) {
          return response_and_data.data;
        });
    }


    /**
     * Updated user
     * This can only be done by the logged in user.
     * @param {String} username name that need to be deleted
     * @param {module:model/User} body Updated user object
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with an object containing HTTP response
     */
    this.updateUserWithHttpInfo = function(username, body) {
      var postBody = body;
      // verify the required parameter 'username' is set
      if (username === undefined || username === null) {
        throw new Error("Missing the required parameter 'username' when calling updateUser");
      }
      // verify the required parameter 'body' is set
      if (body === undefined || body === null) {
        throw new Error("Missing the required parameter 'body' when calling updateUser");
      }

      var pathParams = {
        'username': username
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = [];
      var contentTypes = [];
      var accepts = [];
      var returnType = null;
      return this.apiClient.callApi(
        '/user/{username}', 'PUT',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null
      );
    }

    /**
     * Updated user
     * This can only be done by the logged in user.
     * @param {String} username name that need to be deleted
     * @param {module:model/User} body Updated user object
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}
     */
    this.updateUser = function(username, body) {
      return this.updateUserWithHttpInfo(username, body)
        .then(function(response_and_data) {
          return response_and_data.data;
        });
    }
  };

  return exports;
}));
