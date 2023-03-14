//
//  HomeOneView.swift
//  Guide to Batumi
//
//  Created by Илья Курлович on 28.02.2023.
//

import SwiftUI

struct HomeOneView: View {
    private let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    @State private var currentIndex = 0
    var body: some View {
        TabView(selection: $currentIndex){
            ForEach(0..<6, id: \.self){ num in
                Image("\(num)")
                    .resizable()
                    .scaledToFill()
                    .overlay(Color.black.opacity(0.1))
                    .tag(num)
            }
        }
        .frame(width: 400, height: 280, alignment: .center)
        .tabViewStyle(PageTabViewStyle())
        .onReceive(timer, perform: {_ in
            withAnimation{
                currentIndex = currentIndex < 6 ? currentIndex + 1 : 0
            }
        })
    }
}

struct HomeOneView_Previews: PreviewProvider {
    static var previews: some View {
        HomeOneView()
    }
}
