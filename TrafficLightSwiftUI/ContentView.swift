import SwiftUI

struct ContentView: View {
    
    @State private var redOpacity = 0.1
    @State private var yellowOpacity = 0.1
    @State private var greenOpacity = 0.1
    
    private var settingCircle = Circle().stroke(Color.white, lineWidth: 2)

    @State private var currentColor = "START"
    
    var body: some View {
        ZStack {
            Color.black
            .ignoresSafeArea()
            
            VStack {
                VStack {
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
                    //            Button(currentColor) {
                    //                changeColor()
                    //            }
                }
                Button(action: changeColor) {
                    Text(currentColor)
                }
                .frame(width: 150, height: 250)
                .padding(.bottom, 20)
            }
        }
    }
    
    private func changeColor() {
        switch currentColor {
        case "Turn on yellow":
            redOpacity = 0.1
            currentColor = "Turn on green"
            yellowOpacity = 1.0
        case "Turn on green":
            yellowOpacity = 0.1
            currentColor = "Turn on red"
            greenOpacity = 1.0
        default:
            greenOpacity = 0.1
            currentColor = "Turn on yellow"
            redOpacity = 1.0
        }
    }
}

#Preview {
    ContentView()
}
