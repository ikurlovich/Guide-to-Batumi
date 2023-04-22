import SwiftUI
import MapKit

struct MapGonioView: View {
    @State private var mapRegion = MKCoordinateRegion (center: CLLocationCoordinate2D(latitude: 41.5732589739529, longitude: 41.572616075124984), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    let locations2 = [
        Location("Gonio", coordinate: CLLocationCoordinate2D(latitude: 41.5732589739529, longitude: 41.572616075124984)),
    ]
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $mapRegion, annotationItems: locations2) { location in
                MapMarker(coordinate: location.coordinate, tint: .purple)
            }
        }
    }
}


struct MapGonioView_Previews: PreviewProvider {
    static var previews: some View {
        MapGonioView()
    }
}
