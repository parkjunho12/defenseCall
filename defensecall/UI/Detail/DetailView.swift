//
//  DetailView.swift
//  defensecall
//
//  Created by DataUniverse on 2020/12/16.
//

import SwiftUI
import CallKit
import RealmSwift

struct DetailView : View {

    private var text: String
    
    init(text: String) {
        self.text = text
    }
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
            Text(text)
                .ignoresSafeArea(.all)
        }
    }
}

func blockingNumber(number: String) -> Void {
    Utils.shared.getExtensionEnabledState() {
        state in
        if state {
            
            DispatchQueue(label: "background").async {
                autoreleasepool{
                    let realm = try! Realm()
                    
                    let callkit = CallkitModel()
                    callkit.DataType = 0
                    callkit.Label = ""
                    callkit.Pnum = 01083696569
                    
                    try! realm.write{
                        realm.add(callkit)
                    }
                }
            }
            
            
            CXCallDirectoryManager.sharedInstance.reloadExtension(withIdentifier: "datau.defensecall.defensecall-callkit") {
                error in
                if error != nil {
                    
                } else {
                    
                }
            }
        } else {
            exit(0)
        }
    }
}
