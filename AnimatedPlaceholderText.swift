import SwiftUI

struct AnimatedPlaceholderText: View {
    @Binding var text: String
    let suggestions: [String]
    let interval: TimeInterval
    let prefixText: String

    @State private var currentIndex = 0
    @State private var timer: Timer?

    var body: some View {
        ZStack {
            Text("\(prefixText) \(suggestions[currentIndex])")
                .id(suggestions[currentIndex])
                .transition(.asymmetric(
                    insertion: .move(edge: .bottom).combined(with: .opacity),
                    removal: .move(edge: .top).combined(with: .opacity)
                ))
                .animation(.easeInOut(duration: 0.4), value: suggestions[currentIndex])
                .foregroundColor(.gray)
                .font(.system(size: 14, weight: .semibold))
        }
        .onAppear {
            startTimer()
        }
        .onDisappear {
            timer?.invalidate()
        }
    }

    private func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: interval, repeats: true) { _ in
            withAnimation {
                currentIndex = (currentIndex + 1) % suggestions.count
            }
        }
    }
}
