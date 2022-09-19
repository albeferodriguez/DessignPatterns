//
//  VisaCardConcretePrototype.swift
//  DessignPatterns
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 15/9/22.
//

import Foundation

class VisaCardConcretePrototype: PrototypeCard {

    var cardName = "VISA"

    override func copy(with zone: NSZone? = nil) -> Any {
        guard let prototype = super.copy(with: zone) as? VisaCardConcretePrototype else {
            return VisaCardConcretePrototype()
        }

        prototype.cardName = cardName
        print("Clonado tarjeta Visa")
        return prototype
    }
}
