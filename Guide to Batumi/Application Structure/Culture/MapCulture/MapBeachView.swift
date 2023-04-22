import SwiftUI
import MapKit

struct MapBeachView: View {
    @State private var mapRegion = MKCoordinateRegion (center: CLLocationCoordinate2D(latitude: 41.655808924087, longitude: 41.64318732587864), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    let locations4 = [
        Location("Beach", coordinate: CLLocationCoordinate2D(latitude: 41.655808924087, longitude: 41.64318732587864)),
    ]
    
    var body: some View {
        NavigationView{
            Map(coordinateRegion: $mapRegion, annotationItems: locations4) { location in
                MapMarker(coordinate: location.coordinate, tint: .purple)
            }
        }
    }
}



struct MapBeachView_Previews: PreviewProvider {
    static var previews: some View {
        MapBeachView()
    }
}
