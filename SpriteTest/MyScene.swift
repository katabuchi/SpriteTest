//
//  MyScene.swift
//  SpriteTest
//
//  Created by 片淵 雄介 on 2014/10/07.
//  Copyright (c) 2014年 Spurs_katabuti. All rights reserved.
//


import Foundation
import SpriteKit

class MyScene : SKScene{
  
  var labelNode:SKLabelNode
  
  override init(size: CGSize) {
    self.labelNode = SKLabelNode(text: "SampleNode")
    super.init(size: size)
    self.labelNode.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMaxY(self.frame))
    self.labelNode.fontName = "Arial Bold"
    self.labelNode.physicsBody = SKPhysicsBody(rectangleOfSize: self.frame.size)
    self.labelNode.physicsBody?.restitution = 1.0
    self.labelNode.physicsBody?.linearDamping = 1.0
    self.addChild(self.labelNode)
    self.backgroundColor = SKColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
    
    var ground:SKSpriteNode = SKSpriteNode()
    ground.position = CGPointMake(CGRectGetMidX(self.frame), 0)
    ground.physicsBody = SKPhysicsBody(rectangleOfSize: CGSizeMake(self.frame.size.width, 10))
    ground.physicsBody?.dynamic = false
    self.addChild(ground)
  }
  
  required init(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
}