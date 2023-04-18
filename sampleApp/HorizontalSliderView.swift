import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            ForEach(0..<3) { _ in
                Image(systemName: "globe")
            }
        }
        .padding()
        .border("gray")
    }
}