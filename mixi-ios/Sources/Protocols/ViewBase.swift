//
//  ViewBase.swift
//  mixi-ios
//
//  Created by kou yamamoto on 2021/05/28.
//

import Foundation

// Viewプロトコルを作成する際に必ず継承する
protocol ViewBase: AnyObject {
    func showToast(message: String)
    func beginActivityIndicator()
    func endActivityIndicator()
}
