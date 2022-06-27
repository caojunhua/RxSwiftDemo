//
//  ViewController.swift
//  RxSwiftDemo
//
//  Created by cao hua on 2022/6/27.
//

import UIKit
import RxSwift
import RxCocoa


let sharedDisposeBag = DisposeBag()

class ViewController: UIViewController {
    
    @IBOutlet weak var wechatBtn: UIButton!
    @IBOutlet weak var mailList: UIButton!
    @IBOutlet weak var findBtn: UIButton!
    @IBOutlet weak var meBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addEvent()
    }


}

// MARK: Rx
extension ViewController {
    func addEvent() {
        wechatBtn.rx.tap.subscribe { (_) in
            self.navigationController?.pushViewController(WeChatViewController(), animated: true)
        }.disposed(by: sharedDisposeBag)
    }
}

