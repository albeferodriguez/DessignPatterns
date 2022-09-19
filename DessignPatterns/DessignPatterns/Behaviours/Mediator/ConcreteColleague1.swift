//
//  ConcreteColleague1.swift
//  DessignPatterns
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 16/9/22.
//

import Foundation

class ConcreteColleague1: Colleague {

    override func send(message: String) {
        mediator.send(message: message, colleague: self)
    }

    override func messageReceived(message: String) {
        print("El usuario 1 ha recibido el mensaje: \(message)")
    }
}
