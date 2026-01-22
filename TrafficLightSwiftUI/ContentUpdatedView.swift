import SwiftUI

enum currentLight {
    case red, yellow, green
}

struct ContentUpdatedView: View {
    
    @State private var titleButton: String = "Start"
    
    @State private var redColorOpacity = 0.3
    @State private var yellowColorOpacity = 0.3
    @State private var greenColorOpacity = 0.3
    
    @State private var currentLight = CurrentLight.green
    
    var body: some View {
        ZStack {
            VStack {
                ColorCircleView(color: .red, opacity: 0.3)
                ColorCircleView(color: .yellow, opacity: 0.3)
                ColorCircleView(color: .green, opacity: 0.3)
            }
            Spacer()
            StartButtonView(title: "START") {
                
            }
        }
    }
    
    func changeColor() {
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            redColorOpacity = lightIsOff
            yellowColorOpacity = lightIsOn
        case .yellow:
            currentLight = .green
            yellowColorOpacity = lightIsOff
            greenColorOpacity = lightIsOn
        case .green:
            currentLight = .red
            greenColorOpacity = lightIsOff
            redColorOpacity = lightIsOn
        }
    }
}

#Preview {
    ContentUpdatedView()
}
