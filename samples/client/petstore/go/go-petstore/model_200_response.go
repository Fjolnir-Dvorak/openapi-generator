/*
 * OpenAPI Petstore
 *
 * This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
 *
 * API version: 1.0.0
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package petstore
// Model200Response Model for testing model name starting with number
type Model200Response struct {
	Name int32 `json:"name,omitempty"`
	Class string `json:"class,omitempty"`
}
