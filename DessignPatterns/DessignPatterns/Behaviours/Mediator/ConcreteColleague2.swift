//
//  ConcreteColleague2.swift
//  DessignPatterns
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 16/9/22.
//

import Foundation

class ConcreteColleague2: Colleague {

    override func send(message: String) {
        mediator.send(message: message, colleague: self)
    }

    override func messageReceived(message: String) {
        print("El usuario 2 ha recibido el mensaje: \(message)")
    }
}
