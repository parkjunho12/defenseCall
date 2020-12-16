//
//  CallkitModel.swift
//  defensecall
//
//  Created by DataUniverse on 2020/12/16.
//

import Foundation
import CallKit
import RealmSwift

class CallkitModel: Object {
    dynamic var Pnum : CXCallDirectoryPhoneNumber = 0
    dynamic var Label : String = ""
    dynamic var DataType :Int = 0
}
