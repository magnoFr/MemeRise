//
//  ViewController2.swift
//  teste
//
//  Created by senac2018 on 08/03/2018.
//  Copyright © 2018 senac2018. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController2: UIViewController {
    
    //Função que "passa" o valor do score para o ViewController3
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (count == 5){
        let secondController = segue.destination as! ViewController3
        secondController.stringScore = String(fases.score)
        }
    }
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option3: UIButton!
    @IBOutlet weak var option4: UIButton!
    
    @IBOutlet weak var muteButton: UIButton!
    
    var timer = Timer()
    
    var count: Int = 0
    let fases = LevelsControl.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //resetando timer
        fases.timer = 30
        
        //condição de parada
        if (count == 5){
            performSegue(withIdentifier: "theEnd", sender: self)
            return
        }
        //coloca a label de question (gambiarra no de score)
        scoreLabel.text = String(fases.timer)
        scoreLabel.sizeToFit()
        
        //coloca as options nos botões
        option1.setTitle(fases.levels[count].option1, for: .normal)
        option2.setTitle(fases.levels[count].option2, for: .normal)
        option3.setTitle(fases.levels[count].option3, for: .normal)
        option4.setTitle(fases.levels[count].option4, for: .normal)
        
        //coloca imagem
        imgView.image = UIImage(named: fases.levels[count].imagem)
        
        //timer
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(decrementTimer), userInfo: nil, repeats: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Press se refere ao apertar do botao, press = opcao1, press2 = opcao2 e assim por diante
    @IBAction func press(_ sender: Any) {
        if(SoundSettings.mute == false){
            btnSound()
        }
        
        if (fases.levels[count].correctAnswer == 1){
            fases.addScore(fases)
        }
        count += 1
        
        self.viewDidLoad()
    }
    
    @IBAction func press2(_ sender: Any) {
        if(SoundSettings.mute == false){
            btnSound()
        }
        
        if (fases.levels[count].correctAnswer == 2){
            fases.addScore(fases)
        }
        count += 1

        self.viewDidLoad()
    }
   
    @IBAction func press3(_ sender: Any) {
        if(SoundSettings.mute == false){
            btnSound()
        }
        
        if (fases.levels[count].correctAnswer == 3){
            fases.addScore(fases)
        }
        count += 1
        
        self.viewDidLoad()
    }
    
    @IBAction func press4(_ sender: Any) {
        if(SoundSettings.mute == false){
            btnSound()
        }
        
        if (fases.levels[count].correctAnswer == 4){
            fases.addScore(fases)
        }
        count += 1
        
        self.viewDidLoad()
    }
    
    @objc func decrementTimer(){
            fases.timer -= 1
        
        //atualizando label de score
        scoreLabel.text = String(fases.timer)
        scoreLabel.sizeToFit()
        
        if(fases.timer <= 0 && count < 5){  //&& count < 5 = remendo
            count += 1
            self.viewDidLoad()
            timer.invalidate()
        }
    }

    
    @IBAction func muteSounds(_ sender: Any) {
        if(SoundSettings.mute == false){
            SoundSettings.audioPlayer.stop()
            SoundSettings.mute = true
        }
        else{
            bgMusic()
            SoundSettings.mute = false
        }
    }
    
    
}
