//
//  CreditCardDesactivateCommand.swift
//  DessignPatterns
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 16/9/22.
//

import Foundation

class CreditCardDesactivateCommand: Command {

    var creditCardReceiver: CredictCardReceiver

    init(creditCardReceiver: CredictCardReceiver) {
        self.creditCardReceiver = creditCardReceiver
    }

    func execute() {
        creditCardReceiver.deactivate()
        creditCardReceiver.sendSMSToCustomerDesactivate()
    }
}
