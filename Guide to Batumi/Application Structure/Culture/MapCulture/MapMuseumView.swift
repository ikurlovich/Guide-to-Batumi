//
//  MapMuseumView.swift
//  Guide to Batumi
//
//  Created by Илья Курлович on 24.02.2023.
//
import SwiftUI
import MapKit

struct Location3: Identifiable{
    let id = UUID()
    let name: String
    let coordinate3: CLLocationCoordinate2D
}

struct MapMuseumView: View {
    @State private var mapRegion = MKCoordinateRegion (center: CLLocationCoordinate2D(latitude: 41.64317372785142, longitude: 41.632037600124654), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    let locations3 = [
        Location3(name: "Museum", coordinate3: CLLocationCoordinate2D(latitude: 41.64317372785142, longitude: 41.632037600124654)),
    ]
    var body: some View {
        NavigationView{
            Map(coordinateRegion: $mapRegion, annotationItems: locations3) { location3 in
                MapMarker(coordinate: location3.coordinate3, tint: .purple)
            }
        }
    }
}


struct MapMuseumView_Previews: PreviewProvider {
    static var previews: some View {
        MapMuseumView()
    }
}
