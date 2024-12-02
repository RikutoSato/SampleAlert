import SwiftUI

struct AlertContext {
    var title: String
    var message: String
    var actions: [Action]
    
    struct Action {
        var id = UUID()
        var title: String
        var role: ButtonRole?
        var action: (Action) -> Void
    }
}
