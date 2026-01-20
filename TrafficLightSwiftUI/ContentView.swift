import SwiftUI

struct ContentView: View {
    
    @State private var redOpacity = 0.1
    @State private var yellowOpacity = 0.1
    @State private var greenOpacity = 0.1
    
    private var settingCircle = Circle().stroke(Color.white, lineWidth: 5)

    @State private var currentColor = ""
    @State private var nameButton = "START"
    
    var body: some View {
        ZStack {
            Color.black
            .ignoresSafeArea()
            
            VStack(spacing: 300) {
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
                }
//                Spacer()
                Button(action: changeColor) {
                    Text(nameButton)
                        .font(.largeTitle)
                        .frame(width: 150, height: 50)
                }
                .background(.blue)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 50))
                .overlay(
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(Color.white, lineWidth: 4)
                )
                .padding(.bottom, 50)
            }
        }
    }
    
    private func changeColor() {
        nameButton = "NEXT"
        
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
