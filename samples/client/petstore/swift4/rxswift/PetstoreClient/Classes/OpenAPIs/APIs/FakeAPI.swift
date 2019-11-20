//
// FakeAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Alamofire
import RxSwift

open class FakeAPI {
    /**

     - parameter body: (body) Input boolean as post body (optional)
     - returns: Observable<Bool>
     */
    open class func fakeOuterBooleanSerialize(body: Bool? = nil) -> Observable<Bool> {
        return Observable.create { observer -> Disposable in
            fakeOuterBooleanSerializeWithRequestBuilder(body: body).execute { (response, error) -> Void in
                if let error = error {
                    observer.onError(error)
                } else if let response = response {
                    observer.onNext(response.body!)
                } else {
                    fatalError()
                }
                observer.onCompleted()
            }
            return Disposables.create()
        }
    }

    /**
     - POST /fake/outer/boolean
     - Test serialization of outer boolean types
     - parameter body: (body) Input boolean as post body (optional)
     - returns: RequestBuilder<Bool> 
     */
    open class func fakeOuterBooleanSerializeWithRequestBuilder(body: Bool? = nil) -> RequestBuilder<Bool> {
        let path = "/fake/outer/boolean"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter body: (body) Input composite as post body (optional)
     - returns: Observable<OuterComposite>
     */
    open class func fakeOuterCompositeSerialize(body: OuterComposite? = nil) -> Observable<OuterComposite> {
        return Observable.create { observer -> Disposable in
            fakeOuterCompositeSerializeWithRequestBuilder(body: body).execute { (response, error) -> Void in
                if let error = error {
                    observer.onError(error)
                } else if let response = response {
                    observer.onNext(response.body!)
                } else {
                    fatalError()
                }
                observer.onCompleted()
            }
            return Disposables.create()
        }
    }

    /**
     - POST /fake/outer/composite
     - Test serialization of object with outer number type
     - parameter body: (body) Input composite as post body (optional)
     - returns: RequestBuilder<OuterComposite> 
     */
    open class func fakeOuterCompositeSerializeWithRequestBuilder(body: OuterComposite? = nil) -> RequestBuilder<OuterComposite> {
        let path = "/fake/outer/composite"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<OuterComposite>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter body: (body) Input number as post body (optional)
     - returns: Observable<Double>
     */
    open class func fakeOuterNumberSerialize(body: Double? = nil) -> Observable<Double> {
        return Observable.create { observer -> Disposable in
            fakeOuterNumberSerializeWithRequestBuilder(body: body).execute { (response, error) -> Void in
                if let error = error {
                    observer.onError(error)
                } else if let response = response {
                    observer.onNext(response.body!)
                } else {
                    fatalError()
                }
                observer.onCompleted()
            }
            return Disposables.create()
        }
    }

    /**
     - POST /fake/outer/number
     - Test serialization of outer number types
     - parameter body: (body) Input number as post body (optional)
     - returns: RequestBuilder<Double> 
     */
    open class func fakeOuterNumberSerializeWithRequestBuilder(body: Double? = nil) -> RequestBuilder<Double> {
        let path = "/fake/outer/number"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Double>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter body: (body) Input string as post body (optional)
     - returns: Observable<String>
     */
    open class func fakeOuterStringSerialize(body: String? = nil) -> Observable<String> {
        return Observable.create { observer -> Disposable in
            fakeOuterStringSerializeWithRequestBuilder(body: body).execute { (response, error) -> Void in
                if let error = error {
                    observer.onError(error)
                } else if let response = response {
                    observer.onNext(response.body!)
                } else {
                    fatalError()
                }
                observer.onCompleted()
            }
            return Disposables.create()
        }
    }

    /**
     - POST /fake/outer/string
     - Test serialization of outer string types
     - parameter body: (body) Input string as post body (optional)
     - returns: RequestBuilder<String> 
     */
    open class func fakeOuterStringSerializeWithRequestBuilder(body: String? = nil) -> RequestBuilder<String> {
        let path = "/fake/outer/string"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter body: (body)  
     - returns: Observable<Void>
     */
    open class func testBodyWithFileSchema(body: FileSchemaTestClass) -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            testBodyWithFileSchemaWithRequestBuilder(body: body).execute { (_, error) -> Void in
                if let error = error {
                    observer.onError(error)
                } else {
                    observer.onNext(())
                }
                observer.onCompleted()
            }
            return Disposables.create()
        }
    }

    /**
     - PUT /fake/body-with-file-schema
     - For this test, the body for this request much reference a schema named `File`.
     - parameter body: (body)  
     - returns: RequestBuilder<Void> 
     */
    open class func testBodyWithFileSchemaWithRequestBuilder(body: FileSchemaTestClass) -> RequestBuilder<Void> {
        let path = "/fake/body-with-file-schema"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter query: (query)  
     - parameter body: (body)  
     - returns: Observable<Void>
     */
    open class func testBodyWithQueryParams(query: String, body: User) -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            testBodyWithQueryParamsWithRequestBuilder(query: query, body: body).execute { (_, error) -> Void in
                if let error = error {
                    observer.onError(error)
                } else {
                    observer.onNext(())
                }
                observer.onCompleted()
            }
            return Disposables.create()
        }
    }

    /**
     - PUT /fake/body-with-query-params
     - parameter query: (query)  
     - parameter body: (body)  
     - returns: RequestBuilder<Void> 
     */
    open class func testBodyWithQueryParamsWithRequestBuilder(query: String, body: User) -> RequestBuilder<Void> {
        let path = "/fake/body-with-query-params"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "query": query
        ])

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     To test \"client\" model
     
     - parameter body: (body) client model 
     - returns: Observable<Client>
     */
    open class func testClientModel(body: Client) -> Observable<Client> {
        return Observable.create { observer -> Disposable in
            testClientModelWithRequestBuilder(body: body).execute { (response, error) -> Void in
                if let error = error {
                    observer.onError(error)
                } else if let response = response {
                    observer.onNext(response.body!)
                } else {
                    fatalError()
                }
                observer.onCompleted()
            }
            return Disposables.create()
        }
    }

    /**
     To test \"client\" model
     - PATCH /fake
     - To test \"client\" model
     - parameter body: (body) client model 
     - returns: RequestBuilder<Client> 
     */
    open class func testClientModelWithRequestBuilder(body: Client) -> RequestBuilder<Client> {
        let path = "/fake"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Client>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
     
     - parameter number: (form) None 
     - parameter double: (form) None 
     - parameter patternWithoutDelimiter: (form) None 
     - parameter byte: (form) None 
     - parameter integer: (form) None (optional)
     - parameter int32: (form) None (optional)
     - parameter int64: (form) None (optional)
     - parameter float: (form) None (optional)
     - parameter string: (form) None (optional)
     - parameter binary: (form) None (optional)
     - parameter date: (form) None (optional)
     - parameter dateTime: (form) None (optional)
     - parameter password: (form) None (optional)
     - parameter callback: (form) None (optional)
     - returns: Observable<Void>
     */
    open class func testEndpointParameters(number: Double, double: Double, patternWithoutDelimiter: String, byte: Data, integer: Int? = nil, int32: Int? = nil, int64: Int64? = nil, float: Float? = nil, string: String? = nil, binary: URL? = nil, date: Date? = nil, dateTime: Date? = nil, password: String? = nil, callback: String? = nil) -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            testEndpointParametersWithRequestBuilder(number: number, double: double, patternWithoutDelimiter: patternWithoutDelimiter, byte: byte, integer: integer, int32: int32, int64: int64, float: float, string: string, binary: binary, date: date, dateTime: dateTime, password: password, callback: callback).execute { (_, error) -> Void in
                if let error = error {
                    observer.onError(error)
                } else {
                    observer.onNext(())
                }
                observer.onCompleted()
            }
            return Disposables.create()
        }
    }

    /**
     Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
     - POST /fake
     - Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
     - BASIC:
       - type: http
       - name: http_basic_test
     - parameter number: (form) None 
     - parameter double: (form) None 
     - parameter patternWithoutDelimiter: (form) None 
     - parameter byte: (form) None 
     - parameter integer: (form) None (optional)
     - parameter int32: (form) None (optional)
     - parameter int64: (form) None (optional)
     - parameter float: (form) None (optional)
     - parameter string: (form) None (optional)
     - parameter binary: (form) None (optional)
     - parameter date: (form) None (optional)
     - parameter dateTime: (form) None (optional)
     - parameter password: (form) None (optional)
     - parameter callback: (form) None (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func testEndpointParametersWithRequestBuilder(number: Double, double: Double, patternWithoutDelimiter: String, byte: Data, integer: Int? = nil, int32: Int? = nil, int64: Int64? = nil, float: Float? = nil, string: String? = nil, binary: URL? = nil, date: Date? = nil, dateTime: Date? = nil, password: String? = nil, callback: String? = nil) -> RequestBuilder<Void> {
        let path = "/fake"
        let URLString = PetstoreClientAPI.basePath + path
        let formParams: [String: Any?] = [
            "integer": integer?.encodeToJSON(),
            "int32": int32?.encodeToJSON(),
            "int64": int64?.encodeToJSON(),
            "number": number,
            "float": float,
            "double": double,
            "string": string,
            "pattern_without_delimiter": patternWithoutDelimiter,
            "byte": byte,
            "binary": binary,
            "date": date?.encodeToJSON(),
            "dateTime": dateTime?.encodeToJSON(),
            "password": password,
            "callback": callback
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter enumHeaderStringArray
     */
    public enum EnumHeaderStringArray_testEnumParameters: String {
        case greaterThan = ">"
        case dollar = "$"
    }

    /**
     * enum for parameter enumHeaderString
     */
    public enum EnumHeaderString_testEnumParameters: String {
        case abc = "_abc"
        case efg = "-efg"
        case xyz = "(xyz)"
    }

    /**
     * enum for parameter enumQueryStringArray
     */
    public enum EnumQueryStringArray_testEnumParameters: String {
        case greaterThan = ">"
        case dollar = "$"
    }

    /**
     * enum for parameter enumQueryString
     */
    public enum EnumQueryString_testEnumParameters: String {
        case abc = "_abc"
        case efg = "-efg"
        case xyz = "(xyz)"
    }

    /**
     * enum for parameter enumQueryInteger
     */
    public enum EnumQueryInteger_testEnumParameters: Int {
        case _1 = 1
        case number2 = -2
    }

    /**
     * enum for parameter enumQueryDouble
     */
    public enum EnumQueryDouble_testEnumParameters: Double {
        case _11 = 1.1
        case number12 = -1.2
    }

    /**
     * enum for parameter enumFormStringArray
     */
    public enum EnumFormStringArray_testEnumParameters: String {
        case greaterThan = ">"
        case dollar = "$"
    }

    /**
     * enum for parameter enumFormString
     */
    public enum EnumFormString_testEnumParameters: String {
        case abc = "_abc"
        case efg = "-efg"
        case xyz = "(xyz)"
    }

    /**
     To test enum parameters
     
     - parameter enumHeaderStringArray: (header) Header parameter enum test (string array) (optional)
     - parameter enumHeaderString: (header) Header parameter enum test (string) (optional, default to .-efg)
     - parameter enumQueryStringArray: (query) Query parameter enum test (string array) (optional)
     - parameter enumQueryString: (query) Query parameter enum test (string) (optional, default to .-efg)
     - parameter enumQueryInteger: (query) Query parameter enum test (double) (optional)
     - parameter enumQueryDouble: (query) Query parameter enum test (double) (optional)
     - parameter enumFormStringArray: (form) Form parameter enum test (string array) (optional, default to .$)
     - parameter enumFormString: (form) Form parameter enum test (string) (optional, default to .-efg)
     - returns: Observable<Void>
     */
    open class func testEnumParameters(enumHeaderStringArray: [String]? = nil, enumHeaderString: EnumHeaderString_testEnumParameters? = nil, enumQueryStringArray: [String]? = nil, enumQueryString: EnumQueryString_testEnumParameters? = nil, enumQueryInteger: EnumQueryInteger_testEnumParameters? = nil, enumQueryDouble: EnumQueryDouble_testEnumParameters? = nil, enumFormStringArray: [String]? = nil, enumFormString: EnumFormString_testEnumParameters? = nil) -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            testEnumParametersWithRequestBuilder(enumHeaderStringArray: enumHeaderStringArray, enumHeaderString: enumHeaderString, enumQueryStringArray: enumQueryStringArray, enumQueryString: enumQueryString, enumQueryInteger: enumQueryInteger, enumQueryDouble: enumQueryDouble, enumFormStringArray: enumFormStringArray, enumFormString: enumFormString).execute { (_, error) -> Void in
                if let error = error {
                    observer.onError(error)
                } else {
                    observer.onNext(())
                }
                observer.onCompleted()
            }
            return Disposables.create()
        }
    }

    /**
     To test enum parameters
     - GET /fake
     - To test enum parameters
     - parameter enumHeaderStringArray: (header) Header parameter enum test (string array) (optional)
     - parameter enumHeaderString: (header) Header parameter enum test (string) (optional, default to .-efg)
     - parameter enumQueryStringArray: (query) Query parameter enum test (string array) (optional)
     - parameter enumQueryString: (query) Query parameter enum test (string) (optional, default to .-efg)
     - parameter enumQueryInteger: (query) Query parameter enum test (double) (optional)
     - parameter enumQueryDouble: (query) Query parameter enum test (double) (optional)
     - parameter enumFormStringArray: (form) Form parameter enum test (string array) (optional, default to .$)
     - parameter enumFormString: (form) Form parameter enum test (string) (optional, default to .-efg)
     - returns: RequestBuilder<Void> 
     */
    open class func testEnumParametersWithRequestBuilder(enumHeaderStringArray: [String]? = nil, enumHeaderString: EnumHeaderString_testEnumParameters? = nil, enumQueryStringArray: [String]? = nil, enumQueryString: EnumQueryString_testEnumParameters? = nil, enumQueryInteger: EnumQueryInteger_testEnumParameters? = nil, enumQueryDouble: EnumQueryDouble_testEnumParameters? = nil, enumFormStringArray: [String]? = nil, enumFormString: EnumFormString_testEnumParameters? = nil) -> RequestBuilder<Void> {
        let path = "/fake"
        let URLString = PetstoreClientAPI.basePath + path
        let formParams: [String: Any?] = [
            "enum_form_string_array": enumFormStringArray,
            "enum_form_string": enumFormString?.rawValue
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "enum_query_string_array": enumQueryStringArray,
            "enum_query_string": enumQueryString?.rawValue,
            "enum_query_integer": enumQueryInteger?.rawValue,
            "enum_query_double": enumQueryDouble?.rawValue
        ])
        let nillableHeaders: [String: Any?] = [
            "enum_header_string_array": enumHeaderStringArray,
            "enum_header_string": enumHeaderString?.rawValue
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Fake endpoint to test group parameters (optional)
     
     - parameter requiredStringGroup: (query) Required String in group parameters 
     - parameter requiredBooleanGroup: (header) Required Boolean in group parameters 
     - parameter requiredInt64Group: (query) Required Integer in group parameters 
     - parameter stringGroup: (query) String in group parameters (optional)
     - parameter booleanGroup: (header) Boolean in group parameters (optional)
     - parameter int64Group: (query) Integer in group parameters (optional)
     - returns: Observable<Void>
     */
    open class func testGroupParameters(requiredStringGroup: Int, requiredBooleanGroup: Bool, requiredInt64Group: Int64, stringGroup: Int? = nil, booleanGroup: Bool? = nil, int64Group: Int64? = nil) -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            testGroupParametersWithRequestBuilder(requiredStringGroup: requiredStringGroup, requiredBooleanGroup: requiredBooleanGroup, requiredInt64Group: requiredInt64Group, stringGroup: stringGroup, booleanGroup: booleanGroup, int64Group: int64Group).execute { (_, error) -> Void in
                if let error = error {
                    observer.onError(error)
                } else {
                    observer.onNext(())
                }
                observer.onCompleted()
            }
            return Disposables.create()
        }
    }

    /**
     Fake endpoint to test group parameters (optional)
     - DELETE /fake
     - Fake endpoint to test group parameters (optional)
     - parameter requiredStringGroup: (query) Required String in group parameters 
     - parameter requiredBooleanGroup: (header) Required Boolean in group parameters 
     - parameter requiredInt64Group: (query) Required Integer in group parameters 
     - parameter stringGroup: (query) String in group parameters (optional)
     - parameter booleanGroup: (header) Boolean in group parameters (optional)
     - parameter int64Group: (query) Integer in group parameters (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func testGroupParametersWithRequestBuilder(requiredStringGroup: Int, requiredBooleanGroup: Bool, requiredInt64Group: Int64, stringGroup: Int? = nil, booleanGroup: Bool? = nil, int64Group: Int64? = nil) -> RequestBuilder<Void> {
        let path = "/fake"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "required_string_group": requiredStringGroup.encodeToJSON(),
            "required_int64_group": requiredInt64Group.encodeToJSON(),
            "string_group": stringGroup?.encodeToJSON(),
            "int64_group": int64Group?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "required_boolean_group": requiredBooleanGroup,
            "boolean_group": booleanGroup
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     test inline additionalProperties
     
     - parameter param: (body) request body 
     - returns: Observable<Void>
     */
    open class func testInlineAdditionalProperties(param: [String: String]) -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            testInlineAdditionalPropertiesWithRequestBuilder(param: param).execute { (_, error) -> Void in
                if let error = error {
                    observer.onError(error)
                } else {
                    observer.onNext(())
                }
                observer.onCompleted()
            }
            return Disposables.create()
        }
    }

    /**
     test inline additionalProperties
     - POST /fake/inline-additionalProperties
     - parameter param: (body) request body 
     - returns: RequestBuilder<Void> 
     */
    open class func testInlineAdditionalPropertiesWithRequestBuilder(param: [String: String]) -> RequestBuilder<Void> {
        let path = "/fake/inline-additionalProperties"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: param)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     test json serialization of form data
     
     - parameter param: (form) field1 
     - parameter param2: (form) field2 
     - returns: Observable<Void>
     */
    open class func testJsonFormData(param: String, param2: String) -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            testJsonFormDataWithRequestBuilder(param: param, param2: param2).execute { (_, error) -> Void in
                if let error = error {
                    observer.onError(error)
                } else {
                    observer.onNext(())
                }
                observer.onCompleted()
            }
            return Disposables.create()
        }
    }

    /**
     test json serialization of form data
     - GET /fake/jsonFormData
     - parameter param: (form) field1 
     - parameter param2: (form) field2 
     - returns: RequestBuilder<Void> 
     */
    open class func testJsonFormDataWithRequestBuilder(param: String, param2: String) -> RequestBuilder<Void> {
        let path = "/fake/jsonFormData"
        let URLString = PetstoreClientAPI.basePath + path
        let formParams: [String: Any?] = [
            "param": param,
            "param2": param2
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
