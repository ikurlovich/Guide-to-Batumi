//
//  DonaView.swift
//  Guide to Batumi
//
//  Created by Илья Курлович on 01.03.2023.
//

import SwiftUI

struct DonaView: View {
    @State private var detal1 = false
    @State private var isPresented = false
    var body: some View {
            VStack{
                GroupBox(label: Label("  Кондитерская \"Dona\"", image: "")){
                    FoodThreeView()
                    HStack{
                        Text("More")
                            .foregroundColor(.accentColor)
                            .onTapGesture {
                                withAnimation{
                                    detal1.toggle()
                                }
                            }
                        Spacer()
                        Text("Рейтинг 4.7")
                        Spacer()
                        ForEach(0..<4){ _ in
                            Image(systemName: "star.fill")
                                .foregroundColor(Color(red: 1.0, green: 0.7, blue: 0.1))
                        }
                        Image(systemName: "star.fill")
                            .foregroundColor(Color(red: 1.0, green: 0.7, blue: 0.1))
                    }
                    .padding(.horizontal)
                    if detal1{
                        Text("\nКондитерская Dona - это уютное и стильное место, которое специализируется на производстве и продаже кондитерских изделий высокого качества.\n\nМеню Dona включает в себя широкий выбор тортов, пирожных, маффинов, кеков и других сладостей, которые готовятся из натуральных и свежих ингредиентов. Кондитерская также предлагает напитки, в том числе различные виды кофе, чая и соков, чтобы сопроводить сладости.\n\nDona привлекает посетителей своим стильным и современным дизайном интерьера, а также приветливым и профессиональным обслуживанием. Здесь можно провести время с друзьями, наслаждаясь сладостями и приятной атмосферой. Кондитерская Dona также предлагает услуги доставки для тех, кто хочет заказать десерты на вынос.\n\nНе пугайтесь длинных очередей, сервис организован так слажено, что от входа в кондитерскую до получения заветного тортика не пройдёт и 5 минут, лучшая кондитерская города.")
                            .padding(.horizontal)
                            .onTapGesture {
                                withAnimation{
                                    detal1.toggle()
                                }
                            }
                        Text("Ссылка на Google Maps")
                            .padding(.vertical)
                            .foregroundColor(.accentColor)
                            .onTapGesture {
                                isPresented.toggle()
                            }
                            .safariCover($isPresented, url: "https://goo.gl/maps/CmQw8RdPhTJMFPek9")
                    }
                }
            }
        }
    }

struct DonaView_Previews: PreviewProvider {
    static var previews: some View {
        DonaView()
    }
}
