import SwiftUI
import ScrechKit

struct StartView: View {
    @State private var showImages: Bool = false
    @State private var isShowingDetails = false
    
    var body: some View {
        ZStack {
            VStack {
                Text(isShowingDetails ? "Guide to Batumi 🇬🇪" : "Начнём путешествие по городу?\n🛫🇬🇪🏖️")
                    .padding()
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
                
                if isShowingDetails == false {
                    Text(showImages ? "Готовы?" : "Поехали!")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10)
                            .fill(showImages ? .orange : Color.accentColor))
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(showImages ? .orange : Color.accentColor, lineWidth: 2))
                        .shadow(color: showImages ? .orange : .accentColor, radius: 5, x: 0, y: 2)
                        .padding()
                        .onTapGesture {
                            showImages = true
                            delay(2.5) {
                                withAnimation {
                                    isShowingDetails.toggle()
                                }
                            }
                        }
                }
            }
            StartSubIView($showImages)
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
