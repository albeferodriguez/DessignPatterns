//
//  Silence.swift
//  DessignPatterns
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 19/9/22.
//

import Foundation

class Silence: MobileAlertState {
    func alert(context: MobileAlertStateContext) {
        print("Teléfono está en silencio")
    }
}
