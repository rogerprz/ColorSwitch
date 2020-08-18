//
//  MenuScene.swift
//  ColorSwitch
//
//  Created by Roger Perez on 8/14/20.
//  Copyright © 2020 CodeRoger. All rights reserved.
//

import SpriteKit

class MenuScene: SKScene {
//     let ball = SKSpriteNode(texture: SKTexture(imageNamed: "logo")
    override func didMove(to view: SKView) {
        backgroundColor = UIColor(red: 44/255, green: 62/255, blue: 80/255, alpha: 1.0)
        addLogo()
        addLabels()
    }
    
    func addLogo() {
        let logo = SKSpriteNode(imageNamed: "logo")
        logo.size = CGSize(width: frame.width/4, height: frame.width/4)
        logo.position = CGPoint(x: frame.midX, y: frame.midY + frame.size.height/4)
        
        addChild(logo)
    }
    
    func addLabels(){
        let playLabel = SKLabelNode(text: "Tap to Play")
        playLabel.fontName = "AvenirNext-Bold"
        playLabel.fontSize = 40.0
        playLabel.fontColor = UIColor.white
        playLabel.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(playLabel)
        animate(label: playLabel)
        
        let highscoreLabel = SKLabelNode(text: "Highscore: " + "\(UserDefaults.standard.integer(forKey: "Highscore"))")
        highscoreLabel.fontName = "AvenirNext-Bold"
        highscoreLabel.fontSize = 40.0
        highscoreLabel.fontColor = UIColor.white
        highscoreLabel.position = CGPoint(x: frame.midX, y: frame.midY - highscoreLabel.frame.size.height*4)
        addChild(highscoreLabel)
        
        let recentScoreLabel = SKLabelNode(text: "Recent Score:" + "\(UserDefaults.standard.integer(forKey: "RecentScore"))")
        
        recentScoreLabel.fontName = "AvenirNext-Bold"
        recentScoreLabel.fontSize = 40.0
        recentScoreLabel.fontColor = UIColor.white
        recentScoreLabel.position = CGPoint(x: frame.midX, y: highscoreLabel.position.y - recentScoreLabel.frame.size.height*2)
        addChild(recentScoreLabel)
    }
    
    func animate(label:SKLabelNode){
        let fadeOut = SKAction.fadeOut(withDuration: 0.4)
        let fadeIn = SKAction.fadeIn(withDuration: 0.4)
        
//        let scaleUp = SKAction.scale(to: 1.5, duration: 0.5)
//        let scaleDown = SKAction.scale(by: 1.0, duration: 0.7)
        let sequence = SKAction.sequence([fadeOut,fadeIn]) //, scaleUp, scaleDown
        label.run(SKAction.repeatForever(sequence))
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let gameScene = GameScene(size: view!.bounds.size)
        view!.presentScene(gameScene)
    }
}
