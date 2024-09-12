import SwiftUI

protocol ViewModelProtocol: ObservableObject {
    
    var data : Data { get set }
    
    func DoStuff()
    
}
