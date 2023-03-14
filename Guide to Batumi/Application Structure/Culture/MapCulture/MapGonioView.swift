//
//  MapGonioView.swift
//  Guide to Batumi
//
//  Created by Илья Курлович on 24.02.2023.
//
import SwiftUI
import MapKit

struct Location2: Identifiable{
    let id = UUID()
    let name: String
    let coordinate2: CLLocationCoordinate2D
}

struct MapGonioView: View {
    @State private var mapRegion = MKCoordinateRegion (center: CLLocationCoordinate2D(latitude: 41.5732589739529, longitude: 41.572616075124984), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    let locations2 = [
        Location2(name: "Gonio", coordinate2: CLLocationCoordinate2D(latitude: 41.5732589739529, longitude: 41.572616075124984)),
    ]
    var body: some View {
        NavigationView{
            Map(coordinateRegion: $mapRegion, annotationItems: locations2) { location2 in
                MapMarker(coordinate: location2.coordinate2, tint: .purple)
            }
        }
    }
}


struct MapGonioView_Previews: PreviewProvider {
    static var previews: some View {
        MapGonioView()
    }
}
