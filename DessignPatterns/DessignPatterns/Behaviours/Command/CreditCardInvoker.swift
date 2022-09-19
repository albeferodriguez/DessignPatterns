//
//  CreditCardInvoker.swift
//  DessignPatterns
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 16/9/22.
//

import Foundation

class CreditCardInvoker {
    private var command: Command?

    func setCommand(command: Command) {
        self.command = command
    }

    func run() {
        command?.execute()
    }
}
