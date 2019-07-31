// tslint:disable
/// <reference path="../../../custom.d.ts" />
/**
 * OpenAPI Petstore
 * This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


import * as globalImportUrl from 'url';
import globalAxios, { AxiosPromise, AxiosInstance } from 'axios';
import { Configuration } from '../../../configuration';
import { BASE_PATH, COLLECTION_FORMATS, RequestArgs, BaseAPI, RequiredError } from '../../../base';

import { Order } from '../../../model/some/levels/deep';
/**
 * StoreApi - axios parameter creator
 * @export
 */
export const StoreApiAxiosParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * For valid response try integer IDs with value < 1000. Anything above 1000 or nonintegers will generate API errors
         * @summary Delete purchase order by ID
         * @param {string} orderId ID of the order that needs to be deleted
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        deleteOrder(orderId: string, options: any = {}): RequestArgs {
            // verify required parameter 'orderId' is not null or undefined
            if (orderId === null || orderId === undefined) {
                throw new RequiredError('orderId','Required parameter orderId was null or undefined when calling deleteOrder.');
            }
            const localVarPath = `/store/order/{orderId}`
                .replace(`{${"orderId"}}`, encodeURIComponent(String(orderId)));
            const localVarUrlObj = globalImportUrl.parse(localVarPath, true);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }
            const localVarRequestOptions = { method: 'DELETE', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;


    
            localVarUrlObj.query = {...localVarUrlObj.query, ...localVarQueryParameter, ...options.query};
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...options.headers};

            return {
                url: globalImportUrl.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Returns a map of status codes to quantities
         * @summary Returns pet inventories by status
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getInventory(options: any = {}): RequestArgs {
            const localVarPath = `/store/inventory`;
            const localVarUrlObj = globalImportUrl.parse(localVarPath, true);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }
            const localVarRequestOptions = { method: 'GET', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication api_key required
            if (configuration && configuration.apiKey) {
                const localVarApiKeyValue = typeof configuration.apiKey === 'function'
                    ? configuration.apiKey("api_key")
                    : configuration.apiKey;
                localVarHeaderParameter["api_key"] = localVarApiKeyValue;
            }


    
            localVarUrlObj.query = {...localVarUrlObj.query, ...localVarQueryParameter, ...options.query};
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...options.headers};

            return {
                url: globalImportUrl.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * For valid response try integer IDs with value <= 5 or > 10. Other values will generated exceptions
         * @summary Find purchase order by ID
         * @param {number} orderId ID of pet that needs to be fetched
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getOrderById(orderId: number, options: any = {}): RequestArgs {
            // verify required parameter 'orderId' is not null or undefined
            if (orderId === null || orderId === undefined) {
                throw new RequiredError('orderId','Required parameter orderId was null or undefined when calling getOrderById.');
            }
            const localVarPath = `/store/order/{orderId}`
                .replace(`{${"orderId"}}`, encodeURIComponent(String(orderId)));
            const localVarUrlObj = globalImportUrl.parse(localVarPath, true);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }
            const localVarRequestOptions = { method: 'GET', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;


    
            localVarUrlObj.query = {...localVarUrlObj.query, ...localVarQueryParameter, ...options.query};
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...options.headers};

            return {
                url: globalImportUrl.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * 
         * @summary Place an order for a pet
         * @param {Order} body order placed for purchasing the pet
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        placeOrder(body: Order, options: any = {}): RequestArgs {
            // verify required parameter 'body' is not null or undefined
            if (body === null || body === undefined) {
                throw new RequiredError('body','Required parameter body was null or undefined when calling placeOrder.');
            }
            const localVarPath = `/store/order`;
            const localVarUrlObj = globalImportUrl.parse(localVarPath, true);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }
            const localVarRequestOptions = { method: 'POST', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;


    
            localVarHeaderParameter['Content-Type'] = 'application/json';

            localVarUrlObj.query = {...localVarUrlObj.query, ...localVarQueryParameter, ...options.query};
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...options.headers};
            const needsSerialization = (<any>"Order" !== "string") || localVarRequestOptions.headers['Content-Type'] === 'application/json';
            localVarRequestOptions.data =  needsSerialization ? JSON.stringify(body !== undefined ? body : {}) : (body || "");

            return {
                url: globalImportUrl.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
    }
};

/**
 * StoreApi - functional programming interface
 * @export
 */
export const StoreApiFp = function(configuration?: Configuration) {
    return {
        /**
         * For valid response try integer IDs with value < 1000. Anything above 1000 or nonintegers will generate API errors
         * @summary Delete purchase order by ID
         * @param {string} orderId ID of the order that needs to be deleted
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        deleteOrder(orderId: string, options?: any): (axios?: AxiosInstance, basePath?: string) => AxiosPromise<Response> {
            const localVarAxiosArgs = StoreApiAxiosParamCreator(configuration).deleteOrder(orderId, options);
            return (axios: AxiosInstance = globalAxios, basePath: string = BASE_PATH) => {
                const axiosRequestArgs = {...localVarAxiosArgs.options, url: basePath + localVarAxiosArgs.url};
                return axios.request(axiosRequestArgs);
            };
        },
        /**
         * Returns a map of status codes to quantities
         * @summary Returns pet inventories by status
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getInventory(options?: any): (axios?: AxiosInstance, basePath?: string) => AxiosPromise<{ [key: string]: number; }> {
            const localVarAxiosArgs = StoreApiAxiosParamCreator(configuration).getInventory(options);
            return (axios: AxiosInstance = globalAxios, basePath: string = BASE_PATH) => {
                const axiosRequestArgs = {...localVarAxiosArgs.options, url: basePath + localVarAxiosArgs.url};
                return axios.request(axiosRequestArgs);
            };
        },
        /**
         * For valid response try integer IDs with value <= 5 or > 10. Other values will generated exceptions
         * @summary Find purchase order by ID
         * @param {number} orderId ID of pet that needs to be fetched
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getOrderById(orderId: number, options?: any): (axios?: AxiosInstance, basePath?: string) => AxiosPromise<Order> {
            const localVarAxiosArgs = StoreApiAxiosParamCreator(configuration).getOrderById(orderId, options);
            return (axios: AxiosInstance = globalAxios, basePath: string = BASE_PATH) => {
                const axiosRequestArgs = {...localVarAxiosArgs.options, url: basePath + localVarAxiosArgs.url};
                return axios.request(axiosRequestArgs);
            };
        },
        /**
         * 
         * @summary Place an order for a pet
         * @param {Order} body order placed for purchasing the pet
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        placeOrder(body: Order, options?: any): (axios?: AxiosInstance, basePath?: string) => AxiosPromise<Order> {
            const localVarAxiosArgs = StoreApiAxiosParamCreator(configuration).placeOrder(body, options);
            return (axios: AxiosInstance = globalAxios, basePath: string = BASE_PATH) => {
                const axiosRequestArgs = {...localVarAxiosArgs.options, url: basePath + localVarAxiosArgs.url};
                return axios.request(axiosRequestArgs);
            };
        },
    }
};

/**
 * StoreApi - factory interface
 * @export
 */
export const StoreApiFactory = function (configuration?: Configuration, basePath?: string, axios?: AxiosInstance) {
    return {
        /**
         * For valid response try integer IDs with value < 1000. Anything above 1000 or nonintegers will generate API errors
         * @summary Delete purchase order by ID
         * @param {string} orderId ID of the order that needs to be deleted
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        deleteOrder(orderId: string, options?: any) {
            return StoreApiFp(configuration).deleteOrder(orderId, options)(axios, basePath);
        },
        /**
         * Returns a map of status codes to quantities
         * @summary Returns pet inventories by status
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getInventory(options?: any) {
            return StoreApiFp(configuration).getInventory(options)(axios, basePath);
        },
        /**
         * For valid response try integer IDs with value <= 5 or > 10. Other values will generated exceptions
         * @summary Find purchase order by ID
         * @param {number} orderId ID of pet that needs to be fetched
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getOrderById(orderId: number, options?: any) {
            return StoreApiFp(configuration).getOrderById(orderId, options)(axios, basePath);
        },
        /**
         * 
         * @summary Place an order for a pet
         * @param {Order} body order placed for purchasing the pet
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        placeOrder(body: Order, options?: any) {
            return StoreApiFp(configuration).placeOrder(body, options)(axios, basePath);
        },
    };
};

/**
 * StoreApi - object-oriented interface
 * @export
 * @class StoreApi
 * @extends {BaseAPI}
 */
export class StoreApi extends BaseAPI {
    /**
     * For valid response try integer IDs with value < 1000. Anything above 1000 or nonintegers will generate API errors
     * @summary Delete purchase order by ID
     * @param {string} orderId ID of the order that needs to be deleted
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof StoreApi
     */
    public deleteOrder(orderId: string, options?: any) {
        return StoreApiFp(this.configuration).deleteOrder(orderId, options)(this.axios, this.basePath);
    }

    /**
     * Returns a map of status codes to quantities
     * @summary Returns pet inventories by status
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof StoreApi
     */
    public getInventory(options?: any) {
        return StoreApiFp(this.configuration).getInventory(options)(this.axios, this.basePath);
    }

    /**
     * For valid response try integer IDs with value <= 5 or > 10. Other values will generated exceptions
     * @summary Find purchase order by ID
     * @param {number} orderId ID of pet that needs to be fetched
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof StoreApi
     */
    public getOrderById(orderId: number, options?: any) {
        return StoreApiFp(this.configuration).getOrderById(orderId, options)(this.axios, this.basePath);
    }

    /**
     * 
     * @summary Place an order for a pet
     * @param {Order} body order placed for purchasing the pet
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof StoreApi
     */
    public placeOrder(body: Order, options?: any) {
        return StoreApiFp(this.configuration).placeOrder(body, options)(this.axios, this.basePath);
    }

}
