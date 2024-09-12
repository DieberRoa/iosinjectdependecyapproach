import SwiftUI

class MyViewModel : ViewModelProtocol {
    
    private var myRepository : RepositoryProtocol
    
    @Published var data : Data
    
    init(repository : RepositoryProtocol) {
        self.myRepository = repository
        self.data = Data(name: "", icon: Image(systemName: "nosign"))
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
