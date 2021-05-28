//
//  ViewControllerBase.swift
//  mixi-ios
//
//  Created by kou yamamoto on 2021/05/28.
//

import UIKit
import Toast

// ViewControllerの基底クラス
///
/// ViewControllerを作成する際に必ず継承するもの
/// ここに処理を記述する際は本当にここに書いた方がいいものなのかを考える

class ViewControllerBase: UIViewController {

    var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
    var grayView: UIView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// ViewBaseプロトコルを継承
extension ViewControllerBase: ViewBase {

    func showToast(message: String) {
        self.view.makeToast(message, duration: 2.0, position: .bottom)
    }

    func beginActivityIndicator() {
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.style = UIActivityIndicatorView.Style.medium
        activityIndicator.color = .gray
        view.addSubview(activityIndicator)
        activityIndicator.startAnimating()
        view.isUserInteractionEnabled = false
    }

    func endActivityIndicator() {
        self.activityIndicator.stopAnimating()
        view.isUserInteractionEnabled = true
        self.grayView.removeFromSuperview()
    }
}
