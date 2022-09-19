//
//  MonthlyGoogleFactory.swift
//  DessignPatterns
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 15/9/22.
//

import Foundation

class MonthlyGoogleFactory: AbstractFactoryProtocol {
    func createPayment() -> PaymentAFProtocol {
        return GooglePaymentAF()
    }

    func createMethod() -> Method {
        return MonthlyMehotd()
    }
}
