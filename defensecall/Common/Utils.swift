//
//  Utils.swift
//  defensecall
//
//  Created by DataUniverse on 2020/12/16.
//

import Foundation
import CallKit


class Utils {
    static let shared = Utils()

    
    func getExtensionEnabledState(completionHander: @escaping (Bool) -> Void) {
        CXCallDirectoryManager.sharedInstance.getEnabledStatusForExtension(withIdentifier: "datau.defensecall.defensecall-callkit") { (enabledStatus, error) in
            if (enabledStatus == CXCallDirectoryManager.EnabledStatus.unknown) {
                //error
            } else if (enabledStatus == CXCallDirectoryManager.EnabledStatus.enabled) {
                DispatchQueue.main.async {
                    return completionHander(true)
                }
                
            } else if (enabledStatus == CXCallDirectoryManager.EnabledStatus.disabled) {
                DispatchQueue.main.async {
                    return completionHander(false)
                }
            }
        }
    }
}
