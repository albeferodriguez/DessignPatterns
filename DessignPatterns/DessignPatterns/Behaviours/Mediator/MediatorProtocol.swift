//
//  MediatorProtocol.swift
//  DessignPatterns
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 16/9/22.
//

import Foundation

protocol MediatorProtocol {
    func send(message: String, colleague: Colleague)
}
