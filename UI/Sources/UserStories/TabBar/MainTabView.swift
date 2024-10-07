import SwiftUI

public struct MainTabView: View {
    public init() { }
    
    public var body: some View {
        TabView(selection: .constant(1),
                content:  {
            NavigationSplitView {
                ConfigureTimerQueueView()
            } detail: {
                Text("Taimo")
            }.tabItem { Label("Tab Content 1", systemImage: "star") }.tag(1)
            ConfigureTimerQueueView().tabItem { Text("Tab Content 2") }.tag(2)
            ConfigureTimerQueueView().tabItem { Text("Tab Content 3") }.tag(3)
            ConfigureTimerQueueView().tabItem { Text("Tab Content 4") }.tag(4)
        })
    }
}

#Preview {
    MainTabView()
}
