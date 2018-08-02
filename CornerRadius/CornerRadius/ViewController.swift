//
//  ViewController.swift
//  CornerRadius
//
//  Created by EU_ShenJie on 2018/8/2.
//  Copyright © 2018年 EU_ShenJie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var shadowView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        topView.layer.cornerRadius = 20.0
        topView.layer.masksToBounds = true
        topView.layer.borderWidth = 5.0
        //可以发现，开启了masksToBounds之后，阴影设置完全失效了
        topView.layer.shadowOpacity = 0.5
        topView.layer.shadowOffset = CGSize(width: 10, height: 10)
        
        //为解决上面因开启masksToBounds而导致的阴影设置失效问题，就在topView的外面再套一层UIView，这个外套的UIView和topView的大小和位置完全一致，但是不开启masksToBounds，之后再在这个外套的UIVies上设置阴影，使得在视觉效果上看起来像是把阴影加到了topView上
        shadowView.layer.shadowOpacity = 0.5
        shadowView.layer.shadowOffset = CGSize(width: 10, height: 10)
        
        
        
        
        bottomView.layer.cornerRadius = 20.0
        bottomView.layer.masksToBounds = false
        bottomView.layer.borderWidth = 5.0
        //可以发现，关闭了masksToBounds之后，虽然有阴影了，但是阴影只显示外露的那一部分（就是整个外轮廓）
        bottomView.layer.shadowOpacity = 0.5
        bottomView.layer.shadowOffset = CGSize(width: 10, height: 10)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     
    }


}

