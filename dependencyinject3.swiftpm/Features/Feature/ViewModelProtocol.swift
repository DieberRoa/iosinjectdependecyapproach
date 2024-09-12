import SwiftUI

protocol ViewModelProtocol: ObservableObject {
    
    var data : Data { get set }
    
    func doStuff()
    
}

extension ViewModelProtocol {
    
    var data: Data {
        get { emptyData }
        set { }
    }
    
}
