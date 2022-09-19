//
//  Client.swift
//  DessignPatterns
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 15/9/22.
//

import Foundation

class PaymentMethodClient {
    static func codigoCliente(factory: AbstractFactoryProtocol) {
        let payment = factory.createPayment()
        let method = factory.createMethod()

        payment.doPayment()
        method.calculatePayment()
    }
}
