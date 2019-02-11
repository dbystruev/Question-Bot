//
//  QuestionAnswerer.swift
//  Question Bot
//
//  Created by Denis Bystruev on 04/02/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import Foundation

struct QuestionAnswerer {
    func answer(question: String) -> String? {
        
        let components = question.components(separatedBy: [" ", "\n", ".", ",", "\t", "!", "?", ":", "-", "–", "—", ";"])
        
        let nonEmptyComponents = components.filter { !$0.isEmpty }
        
        let lowercaseComponents = nonEmptyComponents.map { $0.lowercased() }
        
        print(lowercaseComponents)
        
        if lowercaseComponents.contains("стихи") {
            return "Я помню чудное мгновенье..."
        } else if lowercaseComponents.contains("расписание") {
            return "Понедельник 9:00 – 9:40"
        } else {
            return "Не поняла"
        }
    }
}
