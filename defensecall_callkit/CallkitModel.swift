//
//  CallkitModel.swift
//  defensecall_callkit
//
//  Created by DataUniverse on 2020/12/16.
//

import Foundation
import CallKit

class CallKitModel: Codable {
    var Pnum : CXCallDirectoryPhoneNumber
    var Label : String
    var DataType :Int
    
    init(label: String, pnum: CXCallDirectoryPhoneNumber, dataType: Int) {
        self.Label = label
        self.Pnum = pnum
        self.DataType = dataType
    }
}

extension CallKitModel: Equatable {}
func ==(lhs: CallKitModel, rhs: CallKitModel) -> Bool {
    return lhs.Pnum == rhs.Pnum
}
