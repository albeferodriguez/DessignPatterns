//
//  AndExpression.swift
//  DessignPatterns
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 19/9/22.
//

import Foundation

class AndExpression: Expression {

    var expression1: Expression
    var expression2: Expression

    init(expression1: Expression, expression2: Expression) {
        self.expression1 = expression1
        self.expression2 = expression2
    }

    func interpret(context: String) ->  Bool {
        return expression1.interpret(context: context) && expression2.interpret(context: context)
    }
}
