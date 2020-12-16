//
//  defensecallApp.swift
//  defensecall
//
//  Created by DataUniverse on 2020/12/14.
//

import Foundation
import SwiftUI
import ExytePopupView
import RealmSwift

@main
struct defensecallApp: App {

    
    @State
    var isExtension: Bool = false

    @State
    var isShowMessage: Bool = false
    
    var body: some Scene {
        WindowGroup {
            ZStack {
            ContentView()
                .onAppear(perform: {
                    Utils.shared.getExtensionEnabledState(){
                        state in
                        if state {
                            print("call true" )
                            isExtension = false
                        } else {
                            isExtension = true
                        }
                    }
                    
                })
                .sheet(isPresented: $isExtension, content: {
                    
                    SettingView()
                        .onDisappear(perform: {
                            Utils.shared.getExtensionEnabledState(){
                                state in
                                if state {
                                    isShowMessage = false
                                } else {
                                    isShowMessage = true
                                }
                            }
                        })
                })
                .onDisappear(perform: {
                    print("disappear")
                })
            }
                .popup(isPresented: $isShowMessage,type: .toast , position: .bottom, animation: .easeInOut, autohideIn: 2) {
                    PopupCallSetting()
                }
        }
    }
}
