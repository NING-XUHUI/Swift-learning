//
//  ViewController.swift
//  demo
//
//  Created by 宁旭晖 on 2019/10/30.
//  Copyright © 2019 宁旭晖. All rights reserved.
//

import Cocoa

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       

        let width = Int(self.view.frame.size.width - 40)
        let greetigButotn = UIButton(frame: CGRect(x: 20, y: 100, width: width, height: 40))
        greetigButotn.setTitle("Greeting", for: .normal)
        greetigButotn.backgroundColor = .orange
//        greetigButotn.addTarget(self, action: #selector(ViewController.buttonTapped), for: .touchUpInside)
//        greetigButotn.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        greetigButotn.tag = 1
//        greetigButotn.addTarget(self, action: #selector(buttonTappedFor(_:)), for: .touchUpInside)
//        let anotherMethod : Selector = #selector(buttonTappedFor(_:))
//        greetigButotn.addTarget(self, action: anotherMethod, for: .touchUpInside)
        self.view.addSubview(greetigButotn)
//        let timerSelector = #selector(ViewController.timeAction(_:))
//        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: timerSelector, userInfo: "parameter", repeats: true)
        let newSelector = #selector(calledByController)
//        self.perform(newSelector)
//        self.perform(newSelector, with: nil, afterDelay: 2.0)
//        self.performSelector(newSelector, onThread: .main, withObject: nil, waitUntilDone: true)

    }

    @objc func buttonTapped() {
        print("buttonTapped")
    }

    @objc func buttonTappedFor(_ sender: UIButton) {
        let tag = sender.tag
        print("button tag is \(tag)")
    }

    @objc func timeAction(_ timer: Timer) {
        let parameter = timer.userInfo
        print(parameter ?? "")
    }
    @objc func calledByController() {
        print("calledByController")
    }

    

}
