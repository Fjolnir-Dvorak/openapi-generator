//
// ApiResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


open class ApiResponse: JSONEncodable {

    public var code: Int32?
    public var type: String?
    public var message: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["code"] = self.code?.encodeToJSON()
        nillableDictionary["type"] = self.type
        nillableDictionary["message"] = self.message

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

