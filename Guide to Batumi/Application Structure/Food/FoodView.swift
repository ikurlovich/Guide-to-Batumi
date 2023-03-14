//
//  FoodView.swift
//  Guide to Batumi
//
//  Created by Илья Курлович on 08.02.2023.
//

import SwiftUI

struct FoodView: View {
    @State private var detal1 = false
    var body: some View {
        ScrollView{
            VStack{
                PirosmaniView()
                KarabakView()
                DonaView()
                WokView()
            }
        }
    }
}

struct FoodView_Previews: PreviewProvider {
    static var previews: some View {
        FoodView()
    }
}
