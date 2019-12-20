//
//  CostomView.swift
//  demo
//
//  Created by 宁旭晖 on 2019/10/31.
//  Copyright © 2019 宁旭晖. All rights reserved.
//

import Cocoa

protocol DemoDelegate
{
    func checkForm()
}

class CostomeView : UIView, UITextFieldDelegate{

    var textField : UITextField!
    var delegate : DemoDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        textField = UITextField(frame: CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height))
        textField.textColor = .purple
        textField.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)//阴影偏移量
        textField.layer.shadowOpacity = 0.45//投影不透明度
        textField.layer.shadowRadius = 3//阴影半径大小
        textField.backgroundColor = .lightGray//文本框背景颜色
        textField.delegate = self//代理对象
        
        self.addSubview(textField)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {//检测键盘上的回车是否被按下
        self.delegate?.checkForm()
        return true
    }
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
