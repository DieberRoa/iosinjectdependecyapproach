import SwiftUI

class MyRepository {
    
    var dao : Dao
    
    init() {
        self.dao = Dao(externalDescription: "")
    }
    
    func get() {
        self.dao.externalDescription = SampleData.shared.getData()
    }
    
}
