//
//  SeniorShadowViewController.swift
//  CornerRadius
//
//  Created by EU_ShenJie on 2018/8/2.
//  Copyright © 2018年 EU_ShenJie. All rights reserved.
//

import UIKit


//高级阴影方面的知识学习代码——为阴影设置Path
class SeniorShadowViewController: UIViewController {
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var bottomView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        topView.layer.contents = UIImage(named: "wm")?.cgImage
        bottomView.layer.contents = UIImage(named: "wm")?.cgImage
        
        topView.layer.contentsGravity = kCAGravityCenter
        topView.layer.contentsScale = 1.5
        topView.layer.shadowOpacity = 0.5
        topView.layer.shadowOffset = CGSize(width: 150, height: 150)
        //创建一个小矩形Path
        let squarePath = CGPath(rect: CGRect(x: 0, y: 0, width: 150, height: 150), transform: nil)
        //赋予举行阴影
        topView.layer.shadowPath = squarePath
        
        
        bottomView.layer.contentsGravity = kCAGravityCenter
        bottomView.layer.contentsScale = 1.5
        bottomView.layer.shadowOpacity = 0.5
        bottomView.layer.shadowOffset = CGSize(width: 100, height: 50)
        //创建一个大的圆形Path
        let circlePath = CGPath(ellipseIn: CGRect(x: 0, y: 0, width: 250, height: 250), transform: nil)
        //赋予圆形阴影
        bottomView.layer.shadowPath = circlePath
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
