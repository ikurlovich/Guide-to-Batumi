import SwiftUI

struct WokView: View {
    @State private var detal1 = false
    @State private var isPresented = false
    
    var body: some View {
        VStack {
            GroupBox(label: Label("  Мини ресторан \"Вок Венга\"", image: "")) {
                FoodFourView()
                
                HStack {
                    Text("More")
                        .foregroundColor(.accentColor)
                    
                    Spacer()
                    
                    Text("Рейтинг 4.1")
                    
                    Spacer()
                    
                    ForEach(0..<4){ _ in
                        Image(systemName: "star.fill")
                            .foregroundColor(Color(red: 1.0, green: 0.7, blue: 0.1))
                    }
                    Image(systemName: "star")
                        .foregroundColor(Color(red: 1.0, green: 0.7, blue: 0.1))
                }
                .padding(.horizontal)
                
                Text("\n**Мини ресторан \"Вок Венга\"** в Батуми - это скромное но очень уютное заведение азиатской кухни, расположенное в центре города.\n\nЛапшичная предлагает скромны выбор комбинаций: риса, лапши, мяса и заправки, однако каждое из них приготовленно с большим профессионализмом и частичкой души.\n\nС улицы заведение очень неприметное, но каждый кто знает толк в азиатской уличной кухне, оценит качество блюд и колорит этого скромного местечка. ")
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
        .safariCover($isPresented, url: "https://goo.gl/maps/mbvjKxk62A6j1Fqb8")
    }
}

struct WokView_Previews: PreviewProvider {
    static var previews: some View {
        WokView()
    }
}
