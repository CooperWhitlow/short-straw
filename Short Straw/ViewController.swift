//
//  ViewController.swift
//  Random Player
//
//  Created by Cooper Whitlow on 3/24/16.
//  Copyright © 2016 Cooper Whitlow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func setRandomPlayer(playerCount: String) {
        var ordinalIndicator: String
        let playerCount = UInt32(playerCount)
        let randomPlayer = arc4random_uniform(playerCount!)
        
        resultPlayer.text = String(randomPlayer)
        resultDescription.hidden = false
        
        switch resultPlayer.text! {
        case "1":
            ordinalIndicator = "st"
        case "2":
            ordinalIndicator = "nd"
        case "3":
            ordinalIndicator = "rd"
        default:
            ordinalIndicator = "th"
        }
        
        if randomPlayer == 0 {
            resultDescription.text = "YOU were chosen at random!"
        } else {
            resultDescription.text = "The \(randomPlayer)\(ordinalIndicator) player to your left was chosen at random!"
        }
    }
    
    func resetUI() {
        resultDescription.hidden = true
        resultPlayer.text = "-"
    }
    
    @IBOutlet weak var resultPlayer: UILabel!

    @IBOutlet weak var resultDescription: UILabel!

    @IBAction func twoPlayerButton(sender: UIButton) {
        setRandomPlayer(sender.titleLabel!.text!)
    }
    
    @IBAction func threePlayerButton(sender: UIButton) {
        setRandomPlayer(sender.titleLabel!.text!)
    }
    
    @IBAction func fourPlayerButton(sender: UIButton) {
        setRandomPlayer(sender.titleLabel!.text!)
    }
    
    @IBAction func fivePlayerButton(sender: UIButton) {
        setRandomPlayer(sender.titleLabel!.text!)
    }
    
    @IBAction func sixPlayerButton(sender: UIButton) {
        setRandomPlayer(sender.titleLabel!.text!)
    }
    
    @IBAction func sevenPlayerButton(sender: UIButton) {
        setRandomPlayer(sender.titleLabel!.text!)
    }
    
    @IBAction func eightPlayerButton(sender: UIButton) {
        setRandomPlayer(sender.titleLabel!.text!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector:#selector(ViewController.resetUI), name:
            UIApplicationDidEnterBackgroundNotification, object: nil)
    }

}

