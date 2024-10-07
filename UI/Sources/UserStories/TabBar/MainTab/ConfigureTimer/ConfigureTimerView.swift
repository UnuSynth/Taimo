import Foundation
import SwiftUI

struct ConfigureTimerView: View {
    @State private var label: String = ""
    @State private var hours: Int = 0
    @State private var minutes: Int = 0
    @State private var seconds: Int = 1
    private var totalSeconds: Int = 0
    
    private var columns = [
        MultiComponentPicker.Column(label: "h", options: Array(0...23).map { MultiComponentPicker.Column.Option(text: "\($0)", tag: $0) }),
        MultiComponentPicker.Column(label: "min", options: Array(0...59).map { MultiComponentPicker.Column.Option(text: "\($0)", tag: $0) }),
        MultiComponentPicker.Column(label: "sec", options: Array(0...59).map { MultiComponentPicker.Column.Option(text: "\($0)", tag: $0) }),
    ]
    
    var body: some View {
        TextField(
            text: $label,
            prompt: Text("Enter text")
        ) {
            Text("Label:")
        }
        
        MultiComponentPicker(
            columns: columns,
            selections: [$hours, $minutes, $seconds]
        )
    }
}
