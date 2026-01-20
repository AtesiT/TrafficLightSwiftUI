import SwiftUI

struct ContentView: View {
    
    //  Создаём переменные со значениями, которые можем позже использовать и изменить
    @State private var redOpacity = 0.1
    @State private var yellowOpacity = 0.1
    @State private var greenOpacity = 0.1
    //  @State ставим, потому как состояние некоторых наших элементов зависит от источников данных расположенных сверху
    
    //  Во избежании повторения кода, создаём константу, которая содержит настройки нашего круга (контур и его цвет)
    private let settingCircle = Circle().stroke(Color.white, lineWidth: 5)

    //  Создаём переменные с названием кнопки и текущим цветом
    @State private var currentColor = ""
    @State private var nameButton = "START"
    
    //  Экран
    var body: some View {
        //  Используем ZStack, чтобы изменить цвет фона, а поверх него будут наши элементы
        ZStack {
            Color.black
            .ignoresSafeArea()
            
            //  Добавляем вертикальный стэк с пустым пространством между элементами, для размещения кругов и кнопки
            VStack(spacing: 300) {
                //  Размещаем вертиально наши круги, для этого используем стэк
                VStack(spacing: 25) {
                    Circle()
                        .foregroundStyle(Color.red)
                        .overlay(settingCircle)
                        .opacity(redOpacity)
                    Circle()
                        .foregroundStyle(Color.yellow)
                        .overlay(settingCircle)
                        .opacity(yellowOpacity)
                    Circle()
                        .foregroundStyle(Color.green)
                        .overlay(settingCircle)
                        .opacity(greenOpacity)
                }
                
                //  Добавляем нашу кнопку, по нажатию которой, можно сменить цвет активный круг
                Button(action: changeColor) {
                    Text(nameButton)
                        .font(.largeTitle)  //  Устаналиваем размер шрифта
                        .frame(width: 150, height: 50)  //  Размер кнопки
                }
                .background(.blue)  //  Цвет фона кнопки
                .foregroundStyle(.white) // Цвет текста
                .clipShape(RoundedRectangle(cornerRadius: 50))  //  Убираем углы у нашей кнопки (прямоугольника)
                .overlay(
                    RoundedRectangle(cornerRadius: 50)  //  Создаём контур закруглённого прямоугольника
                        .stroke(Color.white, lineWidth: 4)  //  Добавляем белый цвет контуру и указываем размер контура
                )   //  Добавляем белые скрученные углы.
                .padding(.bottom, 50)   //  Ставим отступ снизу
            }
        }
    }
    
    //  Функция для смены активного круга
    private func changeColor() {
        //  При первом обращении изменяем название кнопки со "Start" на "Next"
        if nameButton == "START" { nameButton = "NEXT" }
        
        //  Меняем наши цвета. Если нажать на кнопку и красный был включен, то красный будет выключен (видимость 0.1), желтый будет присвоен нашей переменной, затем желтый круг включится (присвоится видимость 1.0)
        switch currentColor {
        case "Red":
            redOpacity = 0.1
            currentColor = "Yellow"
            yellowOpacity = 1.0
        case "Yellow":
            yellowOpacity = 0.1
            currentColor = "Green"
            greenOpacity = 1.0
        default:
            greenOpacity = 0.1
            currentColor = "Red"
            redOpacity = 1.0
        }
    }
}

#Preview {
    ContentView()
}
