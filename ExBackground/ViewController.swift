//
//  ViewController.swift
//  ExBackground
//
//  Created by 김종권 on 2022/06/18.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
  let disposeBag = DisposeBag()
  
  override func viewDidLoad() {
    super.viewDidLoad()

    AppDelegate.shared.applicationState
      .bind {
        switch $0 {
        case .active:
          print("active")
        case .background:
          print("background")
        case .inactive:
          print("inactive")
        default:
          print("default")
        }
      }
      .disposed(by: self.disposeBag)
  }
}
