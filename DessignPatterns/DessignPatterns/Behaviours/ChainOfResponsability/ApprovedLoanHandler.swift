//
//  ApprovedLoanHandler.swift
//  DessignPatterns
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 15/9/22.
//

import Foundation

protocol ApprovedLoanHandler {
    func setNext(handler: ApprovedLoanHandler)
    func getNext() -> ApprovedLoanHandler
    func creditCardRequest(totalLoan: Int)
}
