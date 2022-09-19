//
//  ArticleOriginator.swift
//  DessignPatterns
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 17/9/22.
//

import Foundation

struct ArticleOriginator {
    var id: Int
    var title: String
    var text: String

    func createMemento() -> ArticleMemento {
        let memento = ArticleMemento(id: id, title: title, text: text)
        return memento
    }

    mutating func restore(memento: ArticleMemento) {
        self.id = memento.id
        self.text = memento.text
        self.title = memento.title
    }
}
