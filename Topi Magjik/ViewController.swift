//
//  ViewController.swift
//  Topi Magjik
//
//  Created by ICK Training on 10/18/17.
//  Copyright © 2017 Anesa Dinarama. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var fotoja: UIImageView!
    var topi = ["Topi 1", "Topi 2", "Topi 3", "Topi 4", "Topi 5"]
    var audioplayer : AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == UIEventSubtype.motionShake{
            Luaj()
            
        }
    }
    @IBAction func Luaj(_ sender: Any) {
        Luaj()
    }
    func Luaj(){
        let numriRandom:Int = Int(arc4random_uniform(UInt32(topi.count)))
        var top = topi[numriRandom]
        var zeri = Bundle.main.url (forResource: "pergjigja", withExtension: "wav")
        audioplayer = try! AVAudioPlayer(contentsOf: zeri!)
        fotoja.image = UIImage(named: top)
        audioplayer.play()
        
    }
}

