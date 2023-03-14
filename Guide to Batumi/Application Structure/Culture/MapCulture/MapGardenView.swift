//
//  BatumiGardenView.swift
//  Guide to Batumi
//
//  Created by Илья Курлович on 23.02.2023.
//

import SwiftUI
import MapKit

struct Location1: Identifiable{
    let id = UUID()
    let name: String
    let coordinate1: CLLocationCoordinate2D
}

struct MapGardenView: View {
    @State private var mapRegion = MKCoordinateRegion (center: CLLocationCoordinate2D(latitude: 41.692, longitude: 41.706), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    let locations1 = [
        Location1(name: "Batumi Botanical Garden", coordinate1: CLLocationCoordinate2D(latitude: 41.692177, longitude: 41.706654)),
    ]
    var body: some View {
        NavigationView{
            Map(coordinateRegion: $mapRegion, annotationItems: locations1) { location1 in
                MapMarker(coordinate: location1.coordinate1, tint: .purple)
            }
        }
    }
}

struct MapGardenView_Previews: PreviewProvider {
    static var previews: some View {
        MapGardenView()
    }
}
