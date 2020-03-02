import SwiftUI

struct DashboardView: View {
    var body: some View {
        let sounds = [ Sound("test1"), Sound("test2"), Sound("test3") ]

        return NavigationView {
            List(sounds, rowContent: DashboardBlock.init)
        }
        .navigationBarTitle("SoundBoard")
    }
}
