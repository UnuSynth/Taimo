import Foundation
import SwiftUI
import Domain

struct ConfigureTimerQueueView: View {
    @State var queue: TimerQueueEntity = .init(timers: [.init(label: "10", seconds: 10, color: .indigo)])
    var body: some View {
        
        List(queue.timers) { timers in 
            
        }
    }
}
