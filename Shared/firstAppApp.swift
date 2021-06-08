//
//  firstAppApp.swift
//  Shared
//
//  Created by Julian González on 2/06/21.
//

import SwiftUI

@main
struct firstAppApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
