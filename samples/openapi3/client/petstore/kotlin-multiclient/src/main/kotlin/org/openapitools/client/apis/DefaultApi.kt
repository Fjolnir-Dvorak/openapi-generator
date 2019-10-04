/**
* MultiResponseServer
* I am returning multiple statuscodes
*
* The version of the OpenAPI document: 3.0.0
* Contact: rtiersch@jobware.de
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
package org.openapitools.client.apis

import org.openapitools.client.models.FirstModel

import org.openapitools.client.infrastructure.ApiClient
import org.openapitools.client.infrastructure.MultiValueMap
import org.openapitools.client.infrastructure.RequestConfig
import org.openapitools.client.infrastructure.RequestMethod
import org.openapitools.client.models.responses.MultiStatusReturnGetResponse

class DefaultApi(basePath: kotlin.String = "http://localhost") : ApiClient(basePath) {

    /**
    * Is able to return a lot of status codes
    * 
    * @param statuscode  
    * @return FirstModel
    */
    @Suppress("UNCHECKED_CAST")
    fun multiStatusReturnGet(statuscode: kotlin.String) : MultiStatusReturnGetResponse {
        val localVariableBody: kotlin.Any? = null
        val localVariableQuery: MultiValueMap = mapOf("statuscode" to listOf("$statuscode"))
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        val localVariableConfig = RequestConfig(
            RequestMethod.GET,
            "/multiStatusReturn",
            query = localVariableQuery,
            headers = localVariableHeaders
        )
        val rawResponse = rawRequest(
                localVariableConfig,
                localVariableBody
        )

        return MultiStatusReturnGetResponse.createFromResponse(response = rawResponse)
    }

}
