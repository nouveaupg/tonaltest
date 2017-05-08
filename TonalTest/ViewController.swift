//
//  ViewController.swift
//  TonalTest
//
//  Created by John Hill on 3/31/17.
//  Copyright © 2017 John Hill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playButton:UIButton?
    @IBOutlet weak var cKey:UIButton?
    @IBOutlet weak var dKey:UIButton?
    @IBOutlet weak var eKey:UIButton?
    @IBOutlet weak var fKey:UIButton?
    @IBOutlet weak var gKey:UIButton?
    @IBOutlet weak var aKey:UIButton?
    @IBOutlet weak var bKey:UIButton?
    
    enum ButtonState:Int {
        case normal = 0
        case correct = 1
        case incorrect = 2
    }
    
    var paused:Bool = false
    var cKeyState:ButtonState = .normal

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pressPlay(sender:UIButton)  {
        if (!paused) {
            paused = true
            playButton?.setImage(#imageLiteral(resourceName: "pause_button"), for: UIControlState.normal)
        }
        else {
            paused = false;
            playButton?.setImage(#imageLiteral(resourceName: "play_button"), for: UIControlState.normal)
        }
    }
    
    @IBAction func pressFwd(sender:UIButton) {
        
    }

    @IBAction func pressReplay(sender:UIButton) {
        
    }
    
    @IBAction func pressMajorKey(sender:UIButton) {
        if (cKey == sender) {
            if cKeyState == .normal {
                cKeyState = .correct
            }
            else if cKeyState == .correct {
                cKeyState = .incorrect
            }
            else {
                cKeyState = .normal
            }
            
            switch cKeyState {
            case .incorrect:
                cKey?.setImage(#imageLiteral(resourceName: "red_button"), for: UIControlState.normal)
            case .correct:
                cKey?.setImage(#imageLiteral(resourceName: "green_button"), for: UIControlState.normal)
            default:
                cKey?.setImage(#imageLiteral(resourceName: "base_key"), for: UIControlState.normal)
            }
        }
    }

}

