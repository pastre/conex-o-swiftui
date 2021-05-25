import SwiftUI

struct HiddeablePasswordView: View {
    
    @State var isPasswordShown = false
    @Binding var password: String
    
    let placeholderText: String
    let toggleMessage: String
    
    var body: some View {
        VStack {
            Toggle("Ver senha", isOn: $isPasswordShown)
            
            Group {
                if isPasswordShown {
                    TextField(placeholderText, text: $password)
                } else {
                    SecureField(placeholderText, text: $password)
                }
            }
            .foregroundColor(.blue)
        }
    }
}

struct HiddablePasswordView_Previews: PreviewProvider {
    
    static var previews: some View {
        HiddeablePasswordView(password:.init(get: { "" }, set: { _ in }), placeholderText: "asdasd", toggleMessage: "weqeqw")
    }
}

