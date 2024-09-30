import Foundation

public struct TimerQueueEntity {
    public let timers: [TimerEntity]
    
    public init(timers: [TimerEntity]) {
        self.timers = timers
    }
}
