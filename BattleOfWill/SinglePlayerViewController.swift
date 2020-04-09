//
//  SinglePlayerViewController.swift
//  BattleOfWill
//
//  Created by 90304566 on 3/3/20.
//  Copyright © 2020 Eden Prairie Schools. All rights reserved.
//

import UIKit

class SinglePlayerViewController: UIViewController {
    
    @IBOutlet weak var statusIndicator: UIImageView!
    
    var colorShouldBeGreen: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("hi")

        
        self.statusIndicator.backgroundColor = UIColor.init(displayP3Red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
        colorShouldBeGreen = false
        
        //set to green at beginning
        
        _ = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { timer in
            self.statusIndicator.backgroundColor = UIColor.init(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
            var red = 1.0
            var green = 0.0

            _ = Timer.scheduledTimer(withTimeInterval: 40.0/256, repeats: true) { timer2 in
                self.statusIndicator.backgroundColor = UIColor.init(displayP3Red: CGFloat(red), green: CGFloat(green), blue: 0.0, alpha: 1.0)
                red -= 5.0/255
                green += 5.0/255
                
                //print("\(red),  \(green), 0.0")
                
                if (red < 0.02 || green > 0.98) {
                    timer2.invalidate()
                }
    
            }
        }
        
        
        
        
    }
    
}
