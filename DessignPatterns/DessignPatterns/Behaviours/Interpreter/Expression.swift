//
//  Expression.swift
//  DessignPatterns
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 19/9/22.
//

import Foundation

protocol Expression {
    func interpret(context: String) -> Bool
}
