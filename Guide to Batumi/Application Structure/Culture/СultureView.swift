import SwiftUI
struct CultureView: View {
    @State private var currentIndex = 0
    @State private var secretOn = false
    @State private var isPresented = false
    @State private var url: String = ""
    var body: some View {
        ScrollView {
            VStack{
                VStack{
                    GroupBox(label: Label("  Ботанический сад Батуми", image: "")){
                        TabView{
                            ForEach(0..<6, id: \.self){ num in
                                Image("Garden\(num)")
                                    .resizable()
                                    .scaledToFill()
                                    .overlay(Color.black.opacity(0.1))
                                    .tag(num)
                            }
                        }
                        .frame(width: 400, height: 280, alignment: .center)
                        .tabViewStyle(PageTabViewStyle())
                        DisclosureGroup("Описание сада") {
                            Text("Ботанический сад в Батуми - это крупнейший ботанический сад на территории Грузии, расположенный на территории почти 112 гектаров на южном склоне горы Мтавари. \nОн был основан в 1912 году ботаником Андреасом Кхиодзе и насчитывает более 5 000 видов экзотических растений со всего мира. \n\nВ саду вы можете увидеть богатое разнообразие растительности, включая тропические и субтропические виды, а также растения из Средиземноморья, Азии, Америки и Австралии. Кроме того, сад известен своими коллекциями редких и уникальных растений, таких как гинкго билоба, пальмы, розы и многие другие. \n\nБотанический сад также является популярным местом для отдыха и прогулок. Здесь вы найдете различные тропические деревья, зеленые газоны и реки, а также уютные кафе и рестораны, где вы можете насладиться блюдами грузинской кухни с видом на уникальную природу.")
                            DisclosureGroup("Сад на карте") {
                                MapGardenView()
                                    .scaledToFit()
                                Text("Ссылка на Google Maps")
                                    .foregroundColor(.accentColor)
                                    .onTapGesture {
                                        url = "https://goo.gl/maps/k2NCwajedz1JTmJB9"
                                        isPresented.toggle()
                                    }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                VStack{
                    GroupBox(label: Label("  Крепость Гонио", image: "")){
                        TabView{
                            ForEach(0..<6, id: \.self){ num in
                                Image("Gonio\(num)")
                                    .resizable()
                                    .scaledToFill()
                                    .overlay(Color.black.opacity(0.1))
                                    .tag(num)
                            }
                        }
                        .frame(width: 400, height: 280, alignment: .center)
                        .tabViewStyle(PageTabViewStyle())
                        DisclosureGroup("Описание крепости") {
                            Text("Крепость Гонио расположена на побережье Черного моря, недалеко от города Батуми, в Грузии. Она была построена в I веке н.э. и является одним из самых древних сооружений этого региона.\n\nКрепость имеет форму прямоугольника, окруженного каменной стеной высотой около 5 метров и толщиной до 1,5 метра. Внутри крепости находятся различные здания и сооружения, такие как башни, церковь, главный дворец и тюрьма.\n\nКрепость Гонио имела стратегическое значение на протяжении многих столетий, так как находилась на границе между различными империями и государствами. В разные времена она принадлежала Римской империи, Византийской империи, Грузии, Османской империи и Российской империи.\n\nВ настоящее время крепость Гонио является одной из главных туристических достопримечательностей Грузии. Ее посещают тысячи туристов каждый год, чтобы насладиться красивыми видами на море и окружающие горы, а также чтобы узнать больше о богатой истории этого региона.")
                            DisclosureGroup("Сад на карте") {
                                    MapGonioView()
                                    .scaledToFit()
                                Text("Ссылка на Google Maps")
                                    .foregroundColor(.accentColor)
                                    .onTapGesture {
                                        url = "https://goo.gl/maps/V267Pkam43BimZzA7"
                                        isPresented.toggle()
                                    }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                VStack{
                    GroupBox(label: Label("  Батумский археологический музей", image: "")){
                        TabView{
                            ForEach(1..<5, id: \.self){ num in
                                Image("Museum\(num)")
                                    .resizable()
                                    .scaledToFill()
                                    .overlay(Color.black.opacity(0.1))
                                    .tag(num)
                            }
                        }
                        .frame(width: 400, height: 280, alignment: .center)
                        .tabViewStyle(PageTabViewStyle())
                        DisclosureGroup("Описание музея") {
                            Text("Археологический музей Батуми расположен в историческом центре города и представляет собой небольшую экспозицию, посвященную истории региона.\n\nВ музее можно увидеть экспонаты, относящиеся к различным историческим эпохам, начиная с бронзового века до средневековья. Среди экспонатов можно увидеть керамические изделия, оружие, монеты, ювелирные изделия и другие артефакты.\n\nТакже в музее есть информационные панели и интерактивные экраны, на которых можно узнать больше о истории региона и археологических раскопках, проводимых на территории города и его окрестностей.\n\nМузей не является крупным, но его экспозиция интересна и содержательна, особенно для тех, кто интересуется историей и археологией.")
                            DisclosureGroup("Музей на карте") {
                                    MapMuseumView()
                                    .scaledToFit()
                                Text("Ссылка на Google Maps")
                                    .foregroundColor(.accentColor)
                                    .onTapGesture {
                                        url = "https://goo.gl/maps/B5jSNainSH8TPfEr6"
                                        isPresented.toggle()
                                    }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                VStack{
                    GroupBox(label: Label("  Батумская набережная", image: "")){
                        TabView{
                            ForEach(1..<5, id: \.self){ num in
                                Image("Beach\(num)")
                                    .resizable()
                                    .scaledToFill()
                                    .tag(num)
                            }
                        }
                        .frame(width: 400, height: 280, alignment: .center)
                        .tabViewStyle(PageTabViewStyle())
                        DisclosureGroup("Описание набережной") {
                            Text("Пляж Батуми - это одна из главных достопримечательностей города, которая привлекает туристов со всего мира. Пляж расположен вдоль Набережной Батуми, и имеет протяженность более 4 километров.\n\nВ 2013 году был открыт Бульвар на набережной, который стал одной из главных достопримечательностей города. На бульваре установили красивые фонтаны, цветочные композиции и скульптуры, а также освещение, которое создает прекрасную атмосферу в ночное время.\n\nТакже одним из символов Батуми стало Колесо обозрения на набережной. Оно было построено в 2011 году и стало одним из самых высоких колес обозрения в Европе. С высоты можно увидеть красивый панорамный вид на город и Черное море.")
                            DisclosureGroup("Пляж на карте") {
                                    MapBeachView()
                                    .scaledToFit()
                                Text("Ссылка на Google Maps")
                                    .foregroundColor(.accentColor)
                                    .onTapGesture {
                                        url = "https://goo.gl/maps/baFxzGWaVvdNLijd7"
                                        isPresented.toggle()
                                    }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                VStack{
                    GroupBox(label: Label("  Ночные улицы Батуми", image: "")){
                        TabView{
                            ForEach(1..<6, id: \.self){ num in
                                Image("Night\(num)")
                                    .resizable()
                                    .scaledToFill()
                                    .tag(num)
                            }
                        }
                        .frame(width: 400, height: 280, alignment: .center)
                        .tabViewStyle(PageTabViewStyle())
                        VStack {
                            Text("Есть ещё множество интересных мест которые Вы сможете открыть для себя в городе, лично я хотел бы добавить в список достопримечательностей такую банальную, но как мне кажется очень важную вещь, как прогулки по ночным улицам.\n\nНочные улицы, наполнены световой иллюминацией, тысячами разноцветных огней, всегда вызывают особое восхищение и привлекают внимание. Каждый раз, когда я нахожусь на таких улицах, я чувствую себя настоящим участником волшебной сказки.\n\nНочной Батуми - одно из самых прекрасных мест на земле, где каждый уголок улицы переплетается с красивыми фонтанами, уютными кафе или оригинальными скульптурами. Ступая по улицам, можно услышать приятный звук фонтана или музыки, которая окрыляет душу и раскрывает сердце.\n\nЯ люблю прогуливаться по улицам, погружаясь в световые игры иллюминации. Каждый дом, каждый фонарь, каждый фонтан превращаются в сказочный объект, который заставляет задержаться и насладиться красотой ночного Батуми.\n\nНочные улицы Батуми - это место, где можно отдохнуть душой и насладиться красотой, которая не оставит равнодушным никого. Это место, где можно увидеть, как свет и тьма переплетаются воедино, создавая настоящее чудо.\n")
                            Image("DogPush")
                                .resizable()
                                .frame(width: 100, height: 35, alignment: .center)
                                .onTapGesture {
                                    withAnimation{
                                        secretOn.toggle()
                                    }
                                }
                            if secretOn{
                                Text("Поздравляю!\nВы открыли секретную достопримечательность!")
                                    .multilineTextAlignment(.center)
                                Image("CultureDog")
                                    .resizable()
                                    .scaledToFit()
                                Text("Знакомьтесь! Пёс - Батон\nдружелюбный собакен проживающий по адресу 1 Pirosmani St, Batumi.Батон настолько дружелюбный и милый, что был удостоен стать достопримечательностью города и был добавлен на Google Maps!\n")
                                Text("Батон на Google Maps")
                                    .foregroundColor(.accentColor)
                                    .onTapGesture {
                                        url = "https://goo.gl/maps/AATvx12HBkFRRRQy8"
                                        isPresented.toggle()
                                    }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .safariCover($isPresented, url: url)
        }
    }
}

struct CultureView_Previews: PreviewProvider {
    static var previews: some View {
        CultureView()
    }
}

