import SwiftUI

struct MyView<Model> : View where Model: ViewModelProtocol {
    
    @ObservedObject var myViewModel : Model

    var body: some View {
        VStack (spacing: 30) {
            Button(action: refreshNameAndIcon) {
                Label("Change", systemImage: "arrow.clockwise.circle.fill")
            }
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150 , height : 150)
                    .foregroundStyle(.tint)
                    .padding()
                self.myViewModel.data.icon
                    .font(.system(size:70))
                    .foregroundStyle(.black)
            }
            Text(self.myViewModel.data.name)
                .font(.title)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .padding([.top])
                .padding(30)
        }
        
    }
    
    public func refreshNameAndIcon() {
        self.myViewModel.doStuff()
    }
    
}
