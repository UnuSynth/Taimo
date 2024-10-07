import Foundation
import SwiftUI
import Domain

struct ConfigureTimerQueueView: View {
    @State var queue: TimerQueueEntity
    
    init(queue: TimerQueueEntity = .init(
        timers: [.init(label: "Ten seconds", seconds: .random(in: 0...100000), color: .indigo)]
    )) {
        self.queue = queue
    }
    
    var body: some View {
        ScrollViewReader { proxy in
            List(queue.timers, id: \.id) { timer in
                HStack {
                    Text(String(timer.seconds))
                        .font(.title)
                    VStack(alignment: .leading, spacing: 8) {
                        Text(timer.label)
                            .font(.headline)
                        Text(timer.color.description.uppercased())
                            .font(.subheadline)
                    }
                }
                .id(timer.id)
                .listRowBackground(timer.color)
            }
            .toolbar {
                ToolbarItem {
                    Button(
                        action: {
                            addItem()
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                withAnimation {
                                    proxy.scrollTo(queue.timers.last?.id, anchor: .bottom)
                                }
                            }
                        }
                    ) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
        }
    }
}

private extension ConfigureTimerQueueView {
    func addItem() {
        queue.timers.append(.init(label: "Ten seconds", seconds: .random(in: 0...100000), color: [Color.green, .blue, .yellow, .purple, .black, .brown, .orange, .mint, .teal, .indigo, .gray].randomElement() ?? .accentColor))
    }
}

#Preview {
    ConfigureTimerQueueView()
}
