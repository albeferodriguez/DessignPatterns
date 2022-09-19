//
//  PlatiniumHandler.swift
//  DessignPatterns
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 15/9/22.
//

import Foundation

class PlatiniumHandler: ApprovedLoanHandler {

    private var next: ApprovedLoanHandler?

    func setNext(handler: ApprovedLoanHandler) {
        next = handler
    }

    func getNext() -> ApprovedLoanHandler {
        return next!
    }

    func creditCardRequest(totalLoan: Int) {
        if totalLoan > 10000 && totalLoan <= 50000 {
            print("Esta solicitud de tarjeta de credito la maneja la Clase PlatiniumHandler")
        } else {
            next!.creditCardRequest(totalLoan: totalLoan)
        }
    }


}
