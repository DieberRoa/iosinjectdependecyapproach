import SwiftUI


struct MyViewModelKey: EnvironmentKey {
    static let defaultValue: any ViewModelProtocol = MyViewModel()
}
    
struct MyRepositoryKey: EnvironmentKey {
    static let defaultValue: RepositoryProtocol = MyRepository()
}

extension EnvironmentValues {
    var myViewModel : any ViewModelProtocol {
        self[MyViewModelKey.self] 
    }
    
    var myRepository: any RepositoryProtocol {
        self[MyRepositoryKey.self]
    }
}
        

