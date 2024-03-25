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
   
    @AppStorage("MapView.zoom")
       private var zoom: Zoom = .medium


       enum Zoom: String, CaseIterable, Identifiable {
           case near = "Near"
           case medium = "Medium"
           case far = "Far"


           var id: Zoom {
               return self
           }
       }
    
    var delta: CLLocationDegrees {
           switch zoom {
           case .near: return 0.02
           case .medium: return 0.2
           case .far: return 2
           }
       }
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: cordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: delta))
    }
}

#Preview {
    MapView(cordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
