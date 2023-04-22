import SwiftUI
import MapKit

struct MapMuseumView: View {
    @State private var mapRegion = MKCoordinateRegion (center: CLLocationCoordinate2D(latitude: 41.64317372785142, longitude: 41.632037600124654), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    let locations3 = [
        Location("Museum", coordinate: CLLocationCoordinate2D(latitude: 41.64317372785142, longitude: 41.632037600124654)),
    ]
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $mapRegion, annotationItems: locations3) { location in
                MapMarker(coordinate: location.coordinate, tint: .purple)
            }
        }
    }
}


struct MapMuseumView_Previews: PreviewProvider {
    static var previews: some View {
        MapMuseumView()
    }
}
