//
//  ViewController3.swift
//  teste
//
//  Created by senac2018 on 09/03/2018.
//  Copyright © 2018 senac2018. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var lbScore: UILabel!
    
    var stringScore = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        lbScore.text = stringScore
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
