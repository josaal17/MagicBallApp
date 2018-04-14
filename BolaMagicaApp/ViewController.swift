//
//  ViewController.swift
//  BolaMagicaApp
//
//  Created by MacBookDesarrolloTecno on 14/4/18.
//  Copyright © 2018 Technical-PC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgBall: UIImageView!
    
    var numero_inicial:Int = 0
    let respuestas:Array = ["ball1","ball2","ball3","ball4","ball5"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnPreguntar(_ sender: UIButton) {
        self.pregBolaMagica()
    }
    
    func pregBolaMagica() -> Void {
        var numero_random: Int = Int(arc4random_uniform(5))
        for i in 0 ..< respuestas.count {
            if(numero_random == i)
            {
                imgBall.image = UIImage(named: respuestas[i])
            }
            
        }
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            self.pregBolaMagica()
        }
    }
    
    override func becomeFirstResponder() -> Bool {
        return true
    }
    
}

