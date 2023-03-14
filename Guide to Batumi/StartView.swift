import SwiftUI
struct StartView: View {
    @State private var isShowingDetails = false
        
        var body: some View {
            VStack {
                Text(isShowingDetails ? "Guide to Batumi 🇬🇪" : "Начнём путешествие по городу?\n🛫🇬🇪🏖️")
                    .multilineTextAlignment(.center)
                    .onTapGesture {
                        withAnimation {
                            isShowingDetails.toggle()
                        }
                    }
                
                if isShowingDetails {
                    ContentView()
                        .transition(.move(edge: .bottom))
                }
            }
        }
    }

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
            .preferredColorScheme(.dark)
    }
}
