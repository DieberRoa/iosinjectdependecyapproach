import SwiftUI

@main
struct MyApp: App {
    
    @Environment(\.myViewModel) var myViewModel
    
    var body: some Scene {
        WindowGroup {
            MyView<MyViewModel>(myViewModel: myViewModel as! MyViewModel)
        }
    }
}
