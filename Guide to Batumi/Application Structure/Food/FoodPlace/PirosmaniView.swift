import SwiftUI

struct PirosmaniView: View {
    @State private var detal1 = false
    @State private var isPresented = false
    
    var body: some View {
        VStack{
            GroupBox(label: Label("  Ресторан \"Pirosmani\"", image: "")) {
                FoodOneView()
                
                HStack {
                    Text("More")
                        .foregroundColor(.accentColor)
                        .onTapGesture {
                            withAnimation{
                                detal1.toggle()
                            }
                        }
                    Spacer()
                    
                    Text("Рейтинг 4.4")
                    
                    Spacer()
                    
                    ForEach(0..<4) {_ in
                        Image(systemName: "star.fill")
                            .foregroundColor(Color(red: 1.0, green: 0.7, blue: 0.1))
                    }
                    Image(systemName: "star.leadinghalf.fill")
                        .foregroundColor(Color(red: 1.0, green: 0.7, blue: 0.1))
                }
                .padding(.horizontal)
                
                if detal1 {
                    Text("\n**Пиросмани** - это ресторан грузинской кухни в городе Батуми, расположенный на улице Шерифхалил Мехтиев. Ресторан назван в честь известного грузинского художника Нико Пиросмани.\n\nРесторан предлагает широкий выбор блюд грузинской кухни, включая хачапури, хинкали, мцвади, супы и многое другое. Также в меню есть множество видов грузинских вин и других напитков.\n\nИнтерьер ресторана выполнен в традиционном грузинском стиле, с использованием дерева и камня, что создает теплую и уютную атмосферу. Ресторан также имеет открытую террасу с видом на город.\n\nОбслуживание в ресторане высокого уровня, а цены на блюда и напитки соответствуют качеству предлагаемых продуктов. Посетители ресторана Пиросмани могут насладиться вкусной грузинской кухней в уютной атмосфере и наслаждаться красивым видом на город Батуми.\n\nОбязательная программа:\n1. Лучшие хинкали в городе.\n2. Хачапури по Аджарски")
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
                }
            }
            .safariCover($isPresented, url: "https://goo.gl/maps/iM5fjPNuexQTX5ve6")
        }
    }
}

struct PirosmaniView_Previews: PreviewProvider {
    static var previews: some View {
        PirosmaniView()
    }
}
