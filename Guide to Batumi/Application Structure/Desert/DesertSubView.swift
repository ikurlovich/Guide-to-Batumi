import SwiftUI

struct DesertSubView: View {
    private let allFunFacts = [
        "В Батуми бывают потопы из-за осадков.\n⛈️",
        "В Батуми хинкали можно заказать практически в любом заведении.\n🥟",
        "В Батуми множество обоятельных улиц.\n😊",
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
        "В Батуми платные лифты, спуск или подъём стоит несколько тетри.\n💸",
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
            Image("khinkali22")
                .resizable()
                .frame(width: 180, height: 180)
                .shadow(color: .accentColor, radius: 10, x: 0, y: 0)
                .rotationEffect(isSpinning ? .degrees(360) : .degrees(0))
                .animation(.linear(duration: 20).repeatForever(autoreverses: false), value: isSpinning)
                .onTapGesture {
                    if let nextFunFact = remainingFunFacts.randomElement() {
                        funFact = nextFunFact
                        remainingFunFacts.removeAll(where: { $0 == nextFunFact })
                    } else {
                        funFact = "Вы признаны целеориентированным человеком, который докопается до истины! Вам удалось открыть все факты."
                        isSpinning = true
                    }
                }
            
            Text("Жмай на Хинкальку!")
                .title2()
                .foregroundColor(.accentColor)
        }
        .overlay {
            Text(funFact)
                .title2()
                .multilineTextAlignment(.center)
                .frame(minWidth: 400)
                .offset(y: -180)
        }
    }
}

struct DesertSubView_Previews: PreviewProvider {
    static var previews: some View {
        DesertSubView()
    }
}
