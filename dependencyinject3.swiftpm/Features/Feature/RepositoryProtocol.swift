import SwiftUI

protocol RepositoryProtocol {
    
    var dao : Dao { get set }
    
    func get()
    
}
