//
//  MapBeachView.swift
//  Guide to Batumi
//
//  Created by Илья Курлович on 25.02.2023.
//
import SwiftUI
import MapKit

struct Location4: Identifiable{
    let id = UUID()
    let name: String
    let coordinate4: CLLocationCoordinate2D
}

struct MapBeachView: View {
    @State private var mapRegion = MKCoordinateRegion (center: CLLocationCoordinate2D(latitude: 41.655808924087, longitude: 41.64318732587864), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    let locations4 = [
        Location4(name: "Beach", coordinate4: CLLocationCoordinate2D(latitude: 41.655808924087, longitude: 41.64318732587864)),
    ]
    var body: some View {
        NavigationView{
            Map(coordinateRegion: $mapRegion, annotationItems: locations4) { location4 in
                MapMarker(coordinate: location4.coordinate4, tint: .purple)
            }
        }
    }
}



struct MapBeachView_Previews: PreviewProvider {
    static var previews: some View {
        MapBeachView()
    }
}
