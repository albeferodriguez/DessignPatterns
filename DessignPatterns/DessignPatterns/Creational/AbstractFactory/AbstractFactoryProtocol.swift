//
//  AbstractFactory.swift
//  DessignPatterns
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 15/9/22.
//

import Foundation

protocol AbstractFactoryProtocol {
    func createPayment() -> PaymentAFProtocol
    func createMethod() -> Method
}
