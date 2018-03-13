//
//  question.swift
//  teste
//
//  Created by senac2018 on 08/03/2018.
//  Copyright © 2018 senac2018. All rights reserved.
//

import Foundation

class Question{
    var question: String?
    var option1: String
    var option2: String
    var option3: String
    var option4: String
    var imagem: String
    
    var correctAnswer: Int
    
    init(question: String, option1: String, option2: String, option3: String, option4: String, correctAnswer: Int, imagem: String){
        self.question = question
        self.option1 = option1
        self.option2 = option2
        self.option3 = option3
        self.option4 = option4
        self.imagem = imagem
        self.correctAnswer = correctAnswer
    }
}
