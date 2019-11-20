/*
 * OpenAPI Petstore
 *
 * This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
 *
 * API version: 1.0.0
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package petstore

import (
	"bytes"
	"encoding/json"
)

// ArrayTest struct for ArrayTest
type ArrayTest struct {
	ArrayOfString *[]string `json:"array_of_string,omitempty"`
	ArrayArrayOfInteger *[][]int64 `json:"array_array_of_integer,omitempty"`
	ArrayArrayOfModel *[][]ReadOnlyFirst `json:"array_array_of_model,omitempty"`
}

// GetArrayOfString returns the ArrayOfString field value if set, zero value otherwise.
func (o *ArrayTest) GetArrayOfString() []string {
	if o == nil || o.ArrayOfString == nil {
		var ret []string
		return ret
	}
	return *o.ArrayOfString
}

// GetArrayOfStringOk returns a tuple with the ArrayOfString field value if set, zero value otherwise
// and a boolean to check if the value has been set.
func (o *ArrayTest) GetArrayOfStringOk() ([]string, bool) {
	if o == nil || o.ArrayOfString == nil {
		var ret []string
		return ret, false
	}
	return *o.ArrayOfString, true
}

// HasArrayOfString returns a boolean if a field has been set.
func (o *ArrayTest) HasArrayOfString() bool {
	if o != nil && o.ArrayOfString != nil {
		return true
	}

	return false
}

// SetArrayOfString gets a reference to the given []string and assigns it to the ArrayOfString field.
func (o *ArrayTest) SetArrayOfString(v []string) {
	o.ArrayOfString = &v
}

// GetArrayArrayOfInteger returns the ArrayArrayOfInteger field value if set, zero value otherwise.
func (o *ArrayTest) GetArrayArrayOfInteger() [][]int64 {
	if o == nil || o.ArrayArrayOfInteger == nil {
		var ret [][]int64
		return ret
	}
	return *o.ArrayArrayOfInteger
}

// GetArrayArrayOfIntegerOk returns a tuple with the ArrayArrayOfInteger field value if set, zero value otherwise
// and a boolean to check if the value has been set.
func (o *ArrayTest) GetArrayArrayOfIntegerOk() ([][]int64, bool) {
	if o == nil || o.ArrayArrayOfInteger == nil {
		var ret [][]int64
		return ret, false
	}
	return *o.ArrayArrayOfInteger, true
}

// HasArrayArrayOfInteger returns a boolean if a field has been set.
func (o *ArrayTest) HasArrayArrayOfInteger() bool {
	if o != nil && o.ArrayArrayOfInteger != nil {
		return true
	}

	return false
}

// SetArrayArrayOfInteger gets a reference to the given [][]int64 and assigns it to the ArrayArrayOfInteger field.
func (o *ArrayTest) SetArrayArrayOfInteger(v [][]int64) {
	o.ArrayArrayOfInteger = &v
}

// GetArrayArrayOfModel returns the ArrayArrayOfModel field value if set, zero value otherwise.
func (o *ArrayTest) GetArrayArrayOfModel() [][]ReadOnlyFirst {
	if o == nil || o.ArrayArrayOfModel == nil {
		var ret [][]ReadOnlyFirst
		return ret
	}
	return *o.ArrayArrayOfModel
}

// GetArrayArrayOfModelOk returns a tuple with the ArrayArrayOfModel field value if set, zero value otherwise
// and a boolean to check if the value has been set.
func (o *ArrayTest) GetArrayArrayOfModelOk() ([][]ReadOnlyFirst, bool) {
	if o == nil || o.ArrayArrayOfModel == nil {
		var ret [][]ReadOnlyFirst
		return ret, false
	}
	return *o.ArrayArrayOfModel, true
}

// HasArrayArrayOfModel returns a boolean if a field has been set.
func (o *ArrayTest) HasArrayArrayOfModel() bool {
	if o != nil && o.ArrayArrayOfModel != nil {
		return true
	}

	return false
}

// SetArrayArrayOfModel gets a reference to the given [][]ReadOnlyFirst and assigns it to the ArrayArrayOfModel field.
func (o *ArrayTest) SetArrayArrayOfModel(v [][]ReadOnlyFirst) {
	o.ArrayArrayOfModel = &v
}

type NullableArrayTest struct {
	Value ArrayTest
	ExplicitNull bool
}

func (v NullableArrayTest) MarshalJSON() ([]byte, error) {
    switch {
    case v.ExplicitNull:
        return []byte("null"), nil
    default:
		return json.Marshal(v.Value)
	}	
}

func (v *NullableArrayTest) UnmarshalJSON(src []byte) error {
	if bytes.Equal(src, []byte("null")) {
		v.ExplicitNull = true
		return nil
	}

	return json.Unmarshal(src, &v.Value)
}

