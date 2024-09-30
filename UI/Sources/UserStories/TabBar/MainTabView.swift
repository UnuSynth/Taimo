import SwiftUI

public struct MainTabView: View {
    public init() { }
    
    public var body: some View {
        TabView(selection: .constant(1),
                content:  {
            ConfigureTimerQueueView().tabItem { Text("Tab Content 1") }.tag(1)
            ConfigureTimerQueueView().tabItem { Text("Tab Content 1") }.tag(1)
            ConfigureTimerQueueView().tabItem { Text("Tab Content 1") }.tag(1)
            ConfigureTimerQueueView().tabItem { Text("Tab Content 1") }.tag(1)
        })
    }
}

#Preview {
    MainTabView()
}
