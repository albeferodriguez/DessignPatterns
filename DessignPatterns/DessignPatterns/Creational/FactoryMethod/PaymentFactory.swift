//
//  PaymentFactory.swift
//  DessignPatterns
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 5/9/22.
//

import Foundation

class PaymentFactory {

    static func buildPayment(typePayment: TypePayment) -> PaymentProtocol {
        switch typePayment {
        case .GOOGLE:
            return GooglePayment()
        case .CARD:
            return CardPayment()
        }
    }
}
