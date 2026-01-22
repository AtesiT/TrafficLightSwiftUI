import SwiftUI

struct StartButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
        }
            .frame(width: 150, height: 50)
            .background(.blue)
            .clipShape(.rect(cornerRadius: 20.0))
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.white, lineWidth: 5)
            )
    }
}

#Preview {
    StartButtonView(title: "TEST") {
        print("Test")
    }
}
