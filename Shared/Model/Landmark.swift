//
//  Landmark.swift
//  firstApp (iOS)
//
//  Created by Julian González on 2/06/21.
//

import Foundation
import SwiftUI

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
