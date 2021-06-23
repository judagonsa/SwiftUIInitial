//
//  landmarkList.swift
//  firstApp (iOS)
//
//  Created by Julian González on 2/06/21.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoriteOnly = false
    
    var filterLandMarks: [Landmark] {
        modelData.landmarks.filter{ landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                
                Toggle(isOn: $showFavoriteOnly){
                    Text("Show favorites only")
                }
                
                ForEach(filterLandMarks){ landMark in
                    NavigationLink(destination: LandmarkDetail(landmark: landMark)) {
                        LandmarkRow(landmark: landMark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct landmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
