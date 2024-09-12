import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            MyView(myViewModel: MyViewModel(repository: MyRepository()))
        }
    }
}
