import SwiftUI
import ScrechKit

struct StartView: View {
    @State private var showImages: Bool = false
    @State private var isShowingDetails = false
    @State private var dictionaryOn = false
    
    var body: some View {
        ZStack {
            VStack {
                ZStack{
                    Text(isShowingDetails ? "Guide to Batumi 🇬🇪" : "Начнём путешествие по городу?\n🛫🇬🇪🏖️")
                        .multilineTextAlignment(.center)
                        .onTapGesture {
                            withAnimation {
                                isShowingDetails.toggle()
                            }
                        }
                    HStack{
                        Spacer()
                        if isShowingDetails{
                            Image(systemName: "text.viewfinder")
                                .foregroundColor(.accentColor)
                                .padding(.horizontal)
                                .onTapGesture {
                                    withAnimation{
                                        dictionaryOn.toggle()
                                    }
                                }
                                .sheet(isPresented: $dictionaryOn){
                                    DictionaryView()
                                        .presentationDetents([.height(200), .medium, .large])
                                        .presentationBackground(.purple)
                                        .presentationCornerRadius(32)
                                }
                                
                        }
                    }
                }
                if isShowingDetails {
                    ContentView()
                        .transition(.move(edge: .bottom))
                }
                
                if isShowingDetails == false {
                    Text(showImages ? "Полетели!" : "Жмай сюдой!")
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
                                    isShowingDetails = true
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
