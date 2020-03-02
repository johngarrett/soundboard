import SwiftUI

struct DashboardBlock: View {
    var sound:Sound!
    init (with sound: Sound) { self.sound = sound }
    var body: some View {
        Button(action: {
            // push to selectionview
        }) {
            Text("Add snippit")
        }
        HStack(alignment: .lastTextBaseline, spacing: 100) {
            Text("\(sound.name)").fontWeight(.bold)
            Button(action: {
                print("playing")
            }) {
                Text("Play")
            }
        }
    }
}
