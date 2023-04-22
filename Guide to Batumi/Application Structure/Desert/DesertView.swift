import SwiftUI

struct DesertView: View {
    @State private var openText = false
    
    var body: some View {
        VStack {
            Spacer()
            
            DesertSubView()
            
            Spacer()
            
            Text("About Guide to Batumi")
                .padding()
                .foregroundColor(.accentColor)
                .onTapGesture {
                    withAnimation{
                        openText.toggle()
                    }
                }
            if openText{
                Text("Guide to Batumi - не детализированный путеводитель по всему городу, а всего лишь приложение помощник туристу, приехавшему на пару недель в отпуск.")
                    .padding(.horizontal)
                    .onTapGesture {
                        withAnimation{
                            openText.toggle()
                        }
                    }
                
                Text("Перечень ресурсов использованных при разработке:\n\nXcode\nChatGPT\nGoogle Maps\nWikipedia.org\nUnsplash.com\nStackoverflow.com\n\nDeveloped by Ilia Kurlovich 2023")
                    .multilineTextAlignment(.center)
                    .padding()
                    .onTapGesture {
                        withAnimation{
                            openText.toggle()
                        }
                    }
            }
            
        }
    }
}

struct DesertView_Previews: PreviewProvider {
    static var previews: some View {
        DesertView()
    }
}
