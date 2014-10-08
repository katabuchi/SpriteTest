//
//  ViewController.swift
//  SpriteTest
//
//  Created by 片淵 雄介 on 2014/10/07.
//  Copyright (c) 2014年 Spurs_katabuti. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = UIColor.whiteColor()
    var spriteView:SKView = SKView(frame: self.view.frame)
    var scene:MyScene = MyScene(size: CGSizeMake(self.view.frame.width, self.view.frame.height))
    spriteView.presentScene(scene)
    self.view = spriteView
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
}

