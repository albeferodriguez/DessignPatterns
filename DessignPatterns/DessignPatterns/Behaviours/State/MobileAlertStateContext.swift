//
//  MobileAlertStateContext.swift
//  DessignPatterns
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 19/9/22.
//

import Foundation

class MobileAlertStateContext {

    var currentState: MobileAlertState = Sound()

    func setState(state: MobileAlertState){
        currentState = state
    }

    func alert(){
        currentState.alert(context: self)
    }
}
