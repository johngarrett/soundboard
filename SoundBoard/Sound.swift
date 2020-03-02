import Foundation

struct Sound: Identifiable {
    var id = UUID()
    let name:String!
    let imageURL:URL?
    let soundURL: URL?
    
    init(_ name: String, image imageURL: URL? = nil, soundURL: URL? = nil) {
        self.name = name
        self.imageURL = imageURL
        self.soundURL = soundURL
    }
}
