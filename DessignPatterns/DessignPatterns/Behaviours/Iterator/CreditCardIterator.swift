//
//  CreditCardIterator.swift
//  DessignPatterns
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 16/9/22.
//

import Foundation

class CreditCardsIterator: IteratorProtocol {

    private var position = 0

    let cards: CreditCardsCollection

    init(cards: CreditCardsCollection) {
        self.cards = cards
    }

    func next() -> CreditCard? {
        defer { position += 1 }
        return cards.items.count > position ? cards.items[position] : nil
    }
}
