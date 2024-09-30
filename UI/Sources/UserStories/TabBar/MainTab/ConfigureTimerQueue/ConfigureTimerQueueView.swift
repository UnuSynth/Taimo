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
//            NavigationSplitView {
            VStack {
                Button(action: {
                    if queue.timers.count < 14 {
                        addItem()
                    } else {
                        withAnimation {
                            proxy.scrollTo(queue.timers.last?.seconds, anchor: .bottom)
                        }
                    }
                }) {
                    Label("Add Item", systemImage: "plus")
                }
                
                List(queue.timers, id: \.seconds) { timer in
                    LazyHStack {
                        Text(String(timer.seconds))
                            .font(.title)
                            .padding(.horizontal, 8)
                        Spacer()
                        VStack(alignment: .leading, spacing: 8) {
                            Text(timer.label)
                                .font(.headline)
                            Text(timer.color.description.uppercased())
                                .font(.subheadline)
                        }
                    }
                    .padding(.vertical, 8)
                    .listRowBackground(timer.color)
                }
                //                .toolbar {
                //                    ToolbarItem {
                //                        Button(action: {
                //                            addItem()
                //                            proxy.scrollTo(queue.timers.last?.seconds, anchor: .bottom)
                //                        }) {
                //                            Label("Add Item", systemImage: "plus")
                //                        }
                //                    }
                //                }
                //            } detail: {
                //                Text("Taimo")
                //            }
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
