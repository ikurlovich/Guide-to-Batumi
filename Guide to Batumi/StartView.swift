import SwiftUI
struct StartView: View {
    @State private var isShowingDetails = false
    @State private var isShowingDetails2 = false
    var body: some View {
        ZStack{
            VStack {
                Text(isShowingDetails ? "Guide to Batumi 🇬🇪" : "Начнём путешествие по городу?\n🛫🇬🇪🏖️\n\n\n\n\n\n\n")
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
            if isShowingDetails == false {
                Text("Поехали!")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10)
                        .fill(Color.accentColor))
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.accentColor, lineWidth: 2))
                    .shadow(color: .accentColor, radius: 5, x: 0, y: 2)
                    .padding()
                    .onTapGesture {
                        withAnimation {
                            isShowingDetails.toggle()
                        }
                    }
            }
            if isShowingDetails2 == false {
                StartSubIView()
            }
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
