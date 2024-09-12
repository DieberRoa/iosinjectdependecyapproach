import SwiftUI

class MyRepository : RepositoryProtocol {
    
    var dao : Dao 
    
    init() {
        self.dao = Dao(externalDescription: "")
    }
    
    func get() {
        self.dao.externalDescription = SampleData.shared.getData()
    }
    
}
