//
//  MapView.swift
//  Landmarks
//
//  Created by Siddikjon Kuziboev on 12/03/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    var cordinate: CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: cordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

#Preview {
    MapView(cordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
