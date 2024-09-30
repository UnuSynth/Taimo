import Foundation

public struct TimerQueueEntity {
    public var timers: [TimerEntity]
    
    public init(timers: [TimerEntity]) {
        self.timers = timers
    }
}
