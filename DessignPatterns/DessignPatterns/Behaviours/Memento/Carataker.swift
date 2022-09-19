//
//  Carataker.swift
//  DessignPatterns
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 17/9/22.
//

import Foundation

class Carataker {
    private var states = [ArticleMemento]()

    func addMemento(memento: ArticleMemento) {
        states.append(memento)
    }

    func getMemento(index: Int) -> ArticleMemento {
        return states[index]
    }
}
