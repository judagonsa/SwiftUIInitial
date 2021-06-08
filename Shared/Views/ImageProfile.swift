//
//  ImageProfile.swift
//  firstApp
//
//  Created by Julian González on 2/06/21.
//

import SwiftUI

struct ImageProfile: View {
    
    var image: Image
    var body: some View {
        
        image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 200, height: 200, alignment: .top)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct ImageProfile_Previews: PreviewProvider {
    static var previews: some View {
        ImageProfile(image: Image("turtlerock"))
    }
}
