//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Siddikjon Kuziboev on 15/03/24.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0 , content: {
                    ForEach(items) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            CategoryItem(landmark: landmark)
                        }
                    }
                })
            }
            .frame(height: 185)
        })
    }
}

#Preview {
    var landMarks = ModelData().landmarks
    return CategoryRow(
        categoryName: landMarks[0].category.rawValue,
        items: Array(landMarks.prefix(4)))
}
