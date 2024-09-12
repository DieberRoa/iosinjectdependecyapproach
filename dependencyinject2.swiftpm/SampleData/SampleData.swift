import SwiftUI

class SampleData {
    
    static let shared = SampleData()   
    var words: [String] = []
    
    init() {
        self.words.append("head")
        self.words.append("apple")
        self.words.append("bell")
        self.words.append("toy")
    }
    
    func GetData() -> String {
        return words[Int.random(in: 0...3)]
    }
    
}
