import SwiftUI

enum currentLight {
    case red, yellow, green
}

struct ContentUpdatedView: View {
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
}

#Preview {
    ContentUpdatedView()
}
