//
//  TerminalExpression.swift
//  DessignPatterns
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 19/9/22.
//

import Foundation

class TerminalExpression: Expression {

    var text: String

    init(text: String) {
        self.text = text
    }

    func interpret(context: String) -> Bool {
        if context.contains(text) {
            return true
        } else {
            return false
        }
    }
}
