//
//  PaymentInAdvanceCardFactory.swift
//  DessignPatterns
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 15/9/22.
//

import Foundation

class PaymentInAdvanceCardFactory: AbstractFactoryProtocol {

    func createPayment() -> PaymentAFProtocol {
        return CardPaymentAF()
    }

    func createMethod() -> Method {
        return PaymentAdvancedMethod()
    }
}
