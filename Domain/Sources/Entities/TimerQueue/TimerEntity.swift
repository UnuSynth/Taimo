import Foundation
import SwiftUI

public final class TimerEntity {
    public let label: String
    public let seconds: Int
    public let color: Color
    
    public init(
        label: String,
        seconds: Int,
        color: Color
    ) {
        self.label = label
        self.seconds = seconds
        self.color = color
    }
}

extension TimerEntity: Identifiable {
    public var id: ObjectIdentifier {
        return .init(self)
    }
}
