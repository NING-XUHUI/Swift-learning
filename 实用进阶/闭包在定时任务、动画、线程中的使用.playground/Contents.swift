//
//  ViewController.swift
//  demo
//
//  Created by 宁旭晖 on 2019/10/31.
//  Copyright © 2019 宁旭晖. All rights reserved.
//

import Cocoa

class ViewController: UIViewController {

    var animationView : UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        
//        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true){ (timer:Timer) in
//            print("Time action...")
//    } //定时器
        animationView = UIView(frame: CGRect(x: 0, y: 40, width: 50, height: 50))
        animationView.backgroundColor = .orange
        self.view.addSubview(animationView)

        UIView.animate(withDuration: 6.0, animations: {//withDuration可控制动画速度
            self.animationView.frame = CGRect(x: 200, y: 400, width: 150, height: 150)
        }){(end:Bool) in
            print("Animation done")
        }
        //动画，方块移动
        
//        Thread.detachNewThread {
//            print("do some thing in a new thread ")
//        }
        
//        DispatchQueue.main.async {
//            print("dispatchqueue.main.async")
//        }
        
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.0){
//            print("dispatchqueue.main.asyncAfter")
//        }
        //等待两秒后执行
}
}
