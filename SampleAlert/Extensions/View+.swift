import SwiftUI

extension View {
    @ViewBuilder
    func alert(_ context: Binding<AlertContext?>) -> some View {
        let isPresented = Binding<Bool> {
            context.wrappedValue != nil
        } set: { isPresented in
            if isPresented == false {
                context.wrappedValue = nil
            }
        }
        
        if let context = context.wrappedValue {
            alert(context.title, isPresented: isPresented) {
                ForEach(Array(context.actions.enumerated()), id: \.self.element.id) { _, action in
                    Button(action.title, role: action.role) {
                        action.action(action)
                    }
                }
            } message: {
                Text(context.message)
            }
        } else {
            self
        }
    }
}
