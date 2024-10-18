import Foundation
import SwiftUI

struct ConfigureTimerView: View {
    @State private var label: String = ""
    @State private var hours: Int = 0
    @State private var minutes: Int = 0
    @State private var seconds: Int = 1
    @State private var isAlertPresented: Bool = false
    private var totalSeconds: Int = 0
    
    private var columns = [
        MultiComponentPicker.Column(label: "h", options: Array(0...23).map { MultiComponentPicker.Column.Option(text: "\($0)", tag: $0) }),
        MultiComponentPicker.Column(label: "min", options: Array(0...59).map { MultiComponentPicker.Column.Option(text: "\($0)", tag: $0) }),
        MultiComponentPicker.Column(label: "sec", options: Array(0...59).map { MultiComponentPicker.Column.Option(text: "\($0)", tag: $0) }),
    ]
    
    var body: some View {
        VStack {
            Spacer(minLength: 48)
            
            TextField(
                text: $label,
                prompt: Text("Enter name")
            ) {
                Text("Label:")
            }
            .frame(height: 32)
            .padding()
            
            MultiComponentPicker(
                columns: columns,
                selections: [$hours, $minutes, $seconds]
            ).padding()
            
            Button("Check") {
                isAlertPresented = true
            }
            .alert(
                setupAlert(),
                isPresented: $isAlertPresented
            ) {
                Button("OK", role: .cancel) {
                    
                }
            }

        }
    }
    
    private func setupAlert() -> String {
        return "Hours: \(hours.description)\nMinutes: \(minutes.description)\nSeconds: \(seconds.description)"
    }
}

#Preview {
    ConfigureTimerView()
}
