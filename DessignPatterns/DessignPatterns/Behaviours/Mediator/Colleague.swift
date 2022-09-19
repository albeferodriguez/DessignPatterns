//
//  Colleague.swift
//  DessignPatterns
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 16/9/22.
//

import Foundation

class Colleague {

    let mediator: MediatorProtocol

    init(mediator: MediatorProtocol) {
        self.mediator = mediator
    }

    func send(message: String) {}
    func messageReceived(message: String) {}
}
