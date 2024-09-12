import SwiftUI

class MyViewModel : ViewModelProtocol {
    
    @Environment(\.myRepository) var myRepository
    
    @Published var data : Data
    
    init() {
        self.data = emptyData
    }
    
    func doStuff() {
        self.myRepository.get()
        
        let toCompare = self.myRepository.dao.externalDescription
        var image : Image = Image(systemName: "nosign")
        
        
        switch (toCompare) {
        case "head":
            image = Image(systemName: "headphones")
        case "apple":
            image = Image(systemName: "appletv")
        case "bell":
            image = Image(systemName: "bell.fill")
        case "toy":
             image = Image(systemName: "bookmark.fill")
        default:
            image = Image(systemName: "nosign")
        }
        
        self.data = Data(name: toCompare, icon: image)
    }
    
}
