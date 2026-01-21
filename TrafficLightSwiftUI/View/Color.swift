import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100)
            .foregroundStyle(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
    }
}

#Preview {
    ColorCircleView(color: .red, opacity: 1.0)
}
