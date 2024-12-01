import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var alert: AlertContext?
    
    func handleOkAlertButtonTap() {
        alert = .init(
            title: "タイトル1",
            message: "メッセージ1",
            actions: [
                .init(title: "OK") {
                    print(#function, $0)
                }
            ]
        )
    }
    
    func handleOkCancelAlertButtonTap() {
        alert = .init(
            title: "タイトル2",
            message: "メッセージ2",
            actions: [
                .init(title: "OK") {
                    print(#function, $0)
                },
                .init(title: "キャンセル", role: .cancel) {
                    print(#function, $0)
                }
            ]
        )
    }
    
    func handleDeleteAlertButtonTap() {
        alert = .init(
            title: "タイトル3",
            message: "メッセージ3",
            actions: [
                .init(title: "削除", role: .destructive) {
                    print(#function, $0)
                },
                .init(title: "キャンセル", role: .cancel) {
                    print(#function, $0)
                }
            ]
        )
    }
    
    func handleTripleAlertButtonTap() {
        alert = .init(
            title: "タイトル4",
            message: "メッセージ4",
            actions: [
                .init(title: "アクション1") {
                    print(#function, $0)
                },
                .init(title: "アクション2") {
                    print(#function, $0)
                },
                .init(title: "アクション3") {
                    print(#function, $0)
                }
            ]
        )
    }
}
