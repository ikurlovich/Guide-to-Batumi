//
//  KarabakView.swift
//  Guide to Batumi
//
//  Created by Илья Курлович on 01.03.2023.
//

import SwiftUI

struct KarabakView: View {
    @State private var detal1 = false
    var body: some View {
            VStack{
                GroupBox(label: Label("  Ресторан \"Karabak\"", image: "")){
                    FoodTwoView()
                    HStack{
                        Text("Подробнее")
                            .foregroundColor(.accentColor)
                            .onTapGesture {
                                withAnimation{
                                    detal1.toggle()
                                }
                            }
                        Spacer()
                        Text("Рейтинг 4.0")
                        Spacer()
                        ForEach(0..<4){ _ in
                            Image(systemName: "star.fill")
                                .foregroundColor(Color(red: 1.0, green: 0.7, blue: 0.1))
                        }
                        Image(systemName: "star")
                            .foregroundColor(Color(red: 1.0, green: 0.7, blue: 0.1))
                    }
                    .padding(.horizontal)
                    if detal1{
                        Text("\nРесторан Карабак расположен в центре города на улице Чавчавадзе, и предлагает посетителям блюда турецкой кухни, такие как баклава, донер кебаб, пиде, ламачун, манты и другие традиционные блюда.\n\nРесторан оформлен в турецком стиле, с элементами декора в национальном стиле, что создает атмосферу традиционной турецкой гостиницы. Ресторан предоставляет гостям услуги кейтеринга и доставки еды на дом.\n\nТаким образом, если вы ищете турецкий ресторан в Батуми, ресторан \"Карабак\" может стать отличным выбором для тех, кто любит традиционную турецкую кухню и атмосферу или впервые желает к ней прикоснуться.\n\nНеофициальный девиз ресторана: много, недорого и очень вкусно")
                            .padding(.horizontal)
                            .onTapGesture {
                                withAnimation{
                                    detal1.toggle()
                                }
                            }
                        Link("Ссылка на Google Maps",
                             destination: URL(string: "https://goo.gl/maps/WcLCSi2TuhoWa6Xw5")!)
                        .padding(.vertical)
                    }
                }
            }
        }
    }

struct KarabakView_Previews: PreviewProvider {
    static var previews: some View {
        KarabakView()
    }
}
