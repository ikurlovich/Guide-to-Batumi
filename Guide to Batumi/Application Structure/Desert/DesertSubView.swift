//
//  DesertSubView.swift
//  Guide to Batumi
//
//  Created by Илья Курлович on 01.03.2023.
//

import SwiftUI
struct DesertSubView: View {
    var allFunFacts =
       [
        "В Батуми бывают потопы из-за осадков.\n⛈️",
        "В Батуми хинкали можно заказать практически в любом заведении.\n🥟",
        "В Батуми множество невзрачных улиц, но по своему обаятельных.\n😊",
        "В Батуми бывают частые проблемы со светом.\n🕯️",
        "В Батуми большое количество бродячих, но дружелюбных собак.\n🐶",
        "В Батуми очень гостеприимные люди.\n🤝",
        "В Батуми огромное количество машин фирмы Toyota.\n🛞",
        "В Батуми множество машин повреждены так как ввезены с американского аукциона.\n⚙️",
        "В Батуми большая часть автомобилей это гибриды.\n🔋",
        "В Батуми есть огромный \"Хопа\" базар на котором можно купить всё что угодно.\n🛒",
        "От Батуми 30 минут до границы с Турцией.\n🇹🇷",
        "В Батуми ночью красивейшая иллюминация города.\n🌃",
        "В Батуми большая часть жителей знает 3 языка, Грузинский, Английский, Русский.\n🇬🇪🇬🇧🇷🇺",
        "В Батуми в одно из зданий встроено колесо обозрения.\n🎡",
        "В Батуми нельзя вырубать и продавать ёлки, местные жители нашли выход из ситуации и делают самодельные наборные ёлки из веток.\n🎄",
        "В Батуми нет центрального отопления.\n🧦",
        "В Батуми почти нет бродячих кошек.\n🐈",
        "Жители турции часто приезжают в магазины техники Батуми за более выгодными ценами на технику.\n💻",
        "В Батуми не острую еду практически не найти.\n🌶️",
        "В Батуми платные лифты, спуск или подъём стоит 1 лари.\n💸",
        "В Батуми при оплате картой нужно называть имя банка, например TBC или BOG.\n☝️",
        "В Батуми в низкая скорость проводного интернета около 20 м/б, но мобильный интернет отличный стабильные 80 м/б.\n📶"
       ]
    @State private var remainingFunFacts: [String]
    @State private var funFact = "Интересные факты о Батуми"
    @State private var isSpinning = false
     init() {
         remainingFunFacts = allFunFacts
     }

     var body: some View {
         VStack {
             
             Text(funFact)
                 .multilineTextAlignment(.center)
                 .font(.title2)
                 .frame(maxWidth: 400, minHeight: 10)
             Image("khinkali")
                 .resizable()
                 .frame(width: 120, height: 120, alignment: .center)
                 .rotationEffect(isSpinning ? .degrees(360) : .degrees(0))
                 .animation(Animation.linear(duration: 20).repeatForever(autoreverses: false), value: isSpinning)
                 .onTapGesture {
                     if let nextFunFact = remainingFunFacts.randomElement() {
                         funFact = nextFunFact
                         remainingFunFacts.removeAll(where: { $0 == nextFunFact })
                     } else {
                         funFact = "Вы признаны целеориентированным человеком, который докопается до истины! Вам удалось выбрать все факты."
                         isSpinning = true
                     }
                 }
             Text("Жмай!")
                 .font(.title2)
         }
         .padding()
     }
 }

struct DesertSubView_Previews: PreviewProvider {
    static var previews: some View {
        DesertSubView()
    }
}
