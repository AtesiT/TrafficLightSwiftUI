import SwiftUI

enum CurrentTheLight {
    case none, pink, orange, cyan
}



struct ContentUpdatedNewView: View {
    
    @State private var currentTheLight: CurrentTheLight = .none
    @State private var currentLightString: String = "None"
    
    @State private var currentWord: String = "Start"
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                ColorCircleView(color: .pink, opacity: currentTheLight == .pink ? 1.0 : 0.3)
                ColorCircleView(color: .orange, opacity: currentTheLight == .orange ? 1.0 : 0.3)
                ColorCircleView(color: .cyan, opacity: currentTheLight == .cyan ? 1.0 : 0.3)
                Spacer()
                StartButtonView(title: currentWord) {
                    if currentWord == "Start" {currentWord = "Next"}
                    changeColor()
                }
            }
            .padding()
        }
    }
    
    private func changeColor() {
        switch currentTheLight {
        case .none: currentTheLight = .pink
        case .cyan: currentTheLight = .pink
        case .pink: currentTheLight = .orange
        case .orange: currentTheLight = .cyan
        }
    }
}

#Preview {
    ContentUpdatedNewView()
}
