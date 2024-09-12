import SwiftUI

class MyRepository : RepositoryProtocol {
    
    var dao : Dao 
    
    init() {
        self.dao = Dao(externalDescription: "")
    }
    
    func Get() {
        self.dao.externalDescription = SampleData.shared.GetData()
    }
    
}
