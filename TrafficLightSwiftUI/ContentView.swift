import SwiftUI

struct ContentView: View {
    
    private var redOpacity = 0.1
    private var yellowOpacity = 0.1
    private var greenOpacity = 0.1
    
    private var currentColor = "none"
    
    var body: some View {
        VStack {
            Circle()
                .foregroundStyle(Color.red)
                .opacity(redOpacity)
            Circle()
                .foregroundStyle(Color.yellow)
                .opacity(yellowOpacity)
            Circle()
                .foregroundStyle(Color.green)
                .opacity(greenOpacity)
            Button("START") {
                return
            }

        }
        .padding()
    }
    
    private mutating func changeColor() {
        switch currentColor {
        case "red":
            redOpacity = 0.1
            currentColor = "yellow"
            yellowOpacity = 1.0
        case "yellow":
            yellowOpacity = 0.1
            currentColor = "green"
            greenOpacity = 1.0
        default:
            greenOpacity = 0.1
            currentColor = "red"
            redOpacity = 1.0
        }
    }
}

#Preview {
    ContentView()
}
