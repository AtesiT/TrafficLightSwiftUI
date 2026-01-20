import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Circle()
                .foregroundStyle(Color.red)
            Circle()
                .foregroundStyle(Color.yellow)
            Circle()
                .foregroundStyle(Color.green)
            Button("START") {
                return
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
