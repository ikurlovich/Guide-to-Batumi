//
//  DictionaryView.swift
//  Guide to Batumi
//
//  Created by Илья Курлович on 14.04.2023.
//

import SwiftUI

struct DictionaryView: View {
    @State private var isPresented = false
    var body: some View {
        ScrollView{
            Text("**Русско-грузинский разговорник**")
                .padding()
            Text("""

**Общие фразы:**

Да - Хо
Нет - Ара
Спасибо - Мадлобт
Пожалуйста - Гэтаква
Не за что - Араприс
Извините - Бодиши
Здравствуйте - Гамарджоба
До свидания - Нахвамдис
Я - Мэ
Мы - Чвэн
Ты - Шэн
Вы - Тквэн
Они - Исини
Как вас зовут? - Ра гквиат?
Хорошо - Каргад
Плохо - Цудад
Жена - Цоли
Муж - Кмари
Дочь - Калишвили
Сын - Важишвили
Мать - Дэда
Отец - Мама
Друг - Мэгобари

**Числа:**

Ноль - Ноли
Один - Эрти
Два - Ори
Три - Сами
Четыре - Отхи
Пять - Хути
Шесть - Эквси
Семь - Швиди
Восемь - Рва
Девять - Цхра
Десять - Ати (аты)
Двадцать - Оци
Тридцать - Оцдаати
Сорок - Ормоци
Пятьдесят - Ормоцдаати
Сто - Аси
Тысяча - Атаси
Миллион - Милиони

""")
            .multilineTextAlignment(.center)
            Text("**Ссылка на полный разговорник**")
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10)
                    .fill(Color.accentColor))
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.accentColor, lineWidth: 2))
                .shadow(color: .accentColor, radius: 5, x: 0, y: 2)
                .padding()
                .onTapGesture {
                    isPresented.toggle()
                }
                .safariCover($isPresented, url: "https://www.tourister.ru/world/asia/georgia/publications/495?ysclid=lf9ok6gr8u128538998#_block_1")
            
        }
    }
}

struct DictionaryView_Previews: PreviewProvider {
    static var previews: some View {
        DictionaryView()
    }
}
