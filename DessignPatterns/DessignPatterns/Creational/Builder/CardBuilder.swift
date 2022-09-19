//
//  CardBuilder.swift
//  DessignPatterns
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 15/9/22.
//

import Foundation

class Card {
    private var cardType: String = ""
    private var number: String = ""
    private var expired: Int = 0

    func showCard() {
        print ("Tarjeta \(cardType) - \(number) - \(expired)")
    }

    class CardBuilder {
        private var innerCard = Card()

        func setCardType(cardType: String) -> CardBuilder {
            innerCard.cardType = cardType
            return self
        }

        func setCardNumber(number: String) -> CardBuilder {
            innerCard.number = number
            return self
        }

        func setExpired(expired: Int) -> CardBuilder {
            innerCard.expired = expired
            return self
        }

        func build() -> Card {
            return innerCard
        }
    }
}
