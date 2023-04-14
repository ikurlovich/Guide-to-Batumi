//
//  StartSubIView.swift
//  Guide to Batumi
//
//  Created by Илья Курлович on 14.04.2023.
//

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
    @State private var showImages = false
    
    var body: some View {
        VStack {
            EmptyView()
                .padding()
            if showImages == false {
                Text(" Готовы? ")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10)
                        .fill(Color.orange))
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.orange, lineWidth: 2))
                    .shadow(color: .orange, radius: 5, x: 0, y: 2)
                    .padding()
                    .onTapGesture {
                        withAnimation {
                            showImages.toggle()
                        }
                    }
            }
            
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

struct StartSubIView_Previews: PreviewProvider {
    static var previews: some View {
        StartSubIView()
    }
}
