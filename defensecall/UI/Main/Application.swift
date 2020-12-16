//
//  Application.swift
//  defensecall
//
//  Created by DataUniverse on 2020/12/16.
//

import SwiftUI

@main
struct Appication: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup{
            ContentView()
        }
    }
    
}
