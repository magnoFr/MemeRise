//
//  LevelsControl.swift
//  teste
//
//  Created by senac2018 on 09/03/2018.
//  Copyright © 2018 senac2018. All rights reserved.
//

import Foundation
class LevelsControl{
    var levels : [Question] = []
    var score : Int
    var timer : Int
    
    init(){
        levels.append(Question(question: "Pergunta1", option1: "1", option2: "2", option3: "3", option4: "4", correctAnswer: 1, imagem: "download"))
        levels.append(Question(question: "Pergunta2", option1: "1", option2: "2", option3: "3", option4: "4", correctAnswer: 1, imagem: "download-1"))
        levels.append(Question(question: "Pergunta3", option1: "1", option2: "2", option3: "3", option4: "4", correctAnswer: 1, imagem: "download-2"))
        levels.append(Question(question: "Pergunta4", option1: "1", option2: "2", option3: "3", option4: "4", correctAnswer: 1, imagem: "download-3"))
        levels.append(Question(question: "Pergunta5", option1: "1", option2: "2", option3: "3", option4: "4", correctAnswer: 1, imagem: "download-4"))
        
        score = 0
        timer = 30
        levels = randomLevels(levels)
        
    }

    private func randomLevels (_ levels: [Question]) -> [Question]{
        var levels2 = levels
        let sizeOfLevels = levels.count
        var i = sizeOfLevels
        var num : Int
        
        var randomLevels : [Question] = []
        
        for _ in 1...sizeOfLevels{
            if(i != 0){
                num = Int(arc4random()) % i
                randomLevels.append(levels2[num])
                levels2.remove(at: num)
                
                i -= 1
            }
            else{
                randomLevels.append(levels2[i])
                return randomLevels
            }
        }
        return randomLevels
    }
    
    func addScore(_ level: LevelsControl){
        level.score += 100 + (5*self.timer)
    }
}

