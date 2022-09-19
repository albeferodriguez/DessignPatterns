//
//  CreditCardCollection.swift
//  DessignPatterns
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 16/9/22.
//

import Foundation

class CreditCardsCollection {

    var items = [CreditCard]()

    func append(_ item: CreditCard){
        self.items.append(item)
    }
}

extension CreditCardsCollection: Sequence {

    func makeIterator() -> some IteratorProtocol {
        return CreditCardsIterator(cards: self)
    }
}
