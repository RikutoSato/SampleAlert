import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Button("OKだけのアラート", action: viewModel.handleOkAlertButtonTap)
            Button("OKとキャンセルのアラート", action: viewModel.handleOkCancelAlertButtonTap)
            Button("削除のアラート", action: viewModel.handleDeleteAlertButtonTap)
            Button("ボタンが3つのアラート", action: viewModel.handleTripleAlertButtonTap)
        }
        .alert($viewModel.alert)
    }
}

#Preview {
    ContentView()
}
