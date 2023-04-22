import SwiftUI
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    
    init(_ name: String, coordinate: CLLocationCoordinate2D) {
        self.name = name
        self.coordinate = coordinate
    }
}

struct MapGardenView: View {
    @State private var mapRegion = MKCoordinateRegion (center: CLLocationCoordinate2D(latitude: 41.692, longitude: 41.706), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    let locations1 = [
        Location("Batumi Botanical Garden", coordinate: CLLocationCoordinate2D(latitude: 41.692177, longitude: 41.706654)),
    ]
    var body: some View {
        NavigationView{
            Map(coordinateRegion: $mapRegion, annotationItems: locations1) { location in
                MapMarker(coordinate: location.coordinate, tint: .purple)
            }
        }
    }
}

struct MapGardenView_Previews: PreviewProvider {
    static var previews: some View {
        MapGardenView()
    }
}
