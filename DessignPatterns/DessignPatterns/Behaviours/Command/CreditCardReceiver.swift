//
//  CreditCardReceiver.swift
//  DessignPatterns
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 16/9/22.
//

import Foundation

class CredictCardReceiver {
    func sendPINNumberToCustomer() {
        print("El pin number ha sido enviado al cliente")
    }

    func sendSMSToCustomerActive() {
        print("Enviado SMS al cliente informando que tarjeta se activó")
    }

    func activate() {
        print("La tarjeta ha sido activada")
    }

    func deactivate() {
        print("La tarjeta ha sido desactivada")
    }

    func sendSMSToCustomerDesactivate() {
        print("Enviado SMS al cliente informando que tarjeta se desactivó")
    }
}
