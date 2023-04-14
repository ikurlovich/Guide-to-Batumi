import SwiftUI

struct StartSubIView2: View {
    @State private var isAnimating = false
    @State private var animationCompleted = false
    
    let imageName: String
    let animationDuration: Double
    let rotationSpeed: Double
    let offsetY: CGFloat
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .rotationEffect(.degrees(isAnimating ? 360 : 0))
            .animation(Animation.easeOut(duration: animationDuration), value: isAnimating)
            .offset(y: isAnimating ? -UIScreen.main.bounds.height : 0)
            .offset(y: offsetY)
            .onAppear {
                self.isAnimating = true
            }
            .onDisappear {
                self.isAnimating = false
                self.animationCompleted = true
            }
    }
}

struct StartSubIView: View {
    @Binding private var showImages: Bool
    
    init(_ showImages: Binding<Bool>) {
        self._showImages = showImages
    }
    
    var body: some View {
        Group {
            if showImages {
                StartSubIView2(imageName: "image1", animationDuration: 4.6, rotationSpeed: 0.5, offsetY: 100)
                StartSubIView2(imageName: "image2", animationDuration: 3.0, rotationSpeed: 1.0, offsetY: 100)
                StartSubIView2(imageName: "image3", animationDuration: 2.1, rotationSpeed: 1.5, offsetY: 100)
            }
        }
        .animation(.default, value: showImages)
        .padding()
    }
}

//struct StartSubIView_Previews: PreviewProvider {
//    static var previews: some View {
//        StartSubIView()
//    }
//}
