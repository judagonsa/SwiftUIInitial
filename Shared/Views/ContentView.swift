//
//  ContentView.swift
//  Shared
//
//  Created by Julian González on 2/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        landmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
