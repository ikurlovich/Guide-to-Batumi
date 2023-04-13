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
                
                if isShowingDetails == false{
                    Text("Поехали!")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10)
                            .fill(Color.blue))
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.blue, lineWidth: 2))
                        .shadow(color: .blue, radius: 5, x: 0, y: 2)
                        .onTapGesture {
                            withAnimation {
                                isShowingDetails.toggle()
                            }
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
    }
}
