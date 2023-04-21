import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView{
                HomeView()
                    .tabItem{
                        Label("Home", image: "Home-ImageBar")
                    }
                CultureView()
                    .tabItem{
                        Label("Culture", image: "Culture-ImageBar")
                    }
                FoodView()
                    .tabItem{
                        Label("Food", image: "Food-ImageBar")
                    }
                DesertView()
                    .tabItem{
                        Label("Fun", image: "Desert-ImageBar")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
