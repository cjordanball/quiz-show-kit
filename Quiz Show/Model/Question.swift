//
//  Question.swift
//  Quiz Show
//
//  Created by C. Jordan Ball III on 6/21/21.
//

import Foundation

struct Question {
    let text: String;
    let answer: String;
    init(q text: String, a answer: String) {
        self.text = text;
        self.answer = answer;
    }
};
