//
//  ViewController.swift
//  DessignPatterns
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 5/9/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        testFactoryMethod()

//        testAbstractFactoryMethod()

//        testBuilder()

//        testPrototype()

//        testChainOfResponsability()

//        testCommand()

//        testIterator()
        
//        testMediator()

//        testMement()

//        testState()

        testInterpreter()
    }

    func testAbstractFactoryMethod() {
        PaymentMethodClient.codigoCliente(factory: MonthlyGoogleFactory())
        PaymentMethodClient.codigoCliente(factory: PaymentInAdvanceCardFactory())
    }

    func testFactoryMethod() {
        var payment: PaymentProtocol
        payment = PaymentFactory.buildPayment(typePayment: TypePayment.GOOGLE)
        payment.doPayment()
    }

    func testBuilder() {
        let card = Card.CardBuilder()
            .setCardNumber(number: "1234-1234-5422-1234")
            .setCardType(cardType: "VISA")
            .build()

        card.showCard()
    }

    func testPrototype() {
        var original = VisaCardConcretePrototype()

        original = VisaCardConcretePrototype(cardNumber: 1111, cardType: "Credit")

        guard let copy = original.copy() as? VisaCardConcretePrototype else {
            return
        }

        print("Original name: \(original.cardName)")
        print("Copy name: \(copy.cardName)")
    }

    func testChainOfResponsability() {
        let bank = BankHandler()
        bank.creditCardRequest(totalLoan: 15000)
    }

    func testCommand() {
        let creditCard = CredictCardReceiver()
        let invoker = CreditCardInvoker()

        invoker.setCommand(command: CreditCardActivateCommand(creditCardReceiver: creditCard))
        invoker.run()
    }

    func testIterator() {
//        let misTarjetas = CreditCardsCollection()
//        misTarjetas.append(CreditCard(type: "Gold"))
//        misTarjetas.append(CreditCard(type: "Black"))
//        misTarjetas.append(CreditCard(type: "Platinum"))
//
//        for card in misTarjetas {
//            print(card.type)
//        }
    }

    func testMediator() {
        let mediator = ConcreteMediator()
        let concreteCollegue1 = ConcreteColleague1(mediator: mediator)
        let concreteCollegue2 = ConcreteColleague2(mediator: mediator)

        mediator.setColleague1(colleague1: concreteCollegue1)
        mediator.setColleague2(colleague2: concreteCollegue2)

        concreteCollegue1.send(message: "Usuario 1 manda un mensaje: Hola como estás")
        concreteCollegue2.send(message: "Hola usuario 1, soy el usuario 2, estoy bien")
    }

    func testMement() {
        let carataker = Carataker()
        var article = ArticleOriginator(id: 1, title: "Memento", text: "Memento es una pelicula")
        carataker.addMemento(memento: article.createMemento())

        article.text = "Memento es una pelicula de Nolan protagonizada por Guy Pearce"

        print(article.text)

        carataker.addMemento(memento: article.createMemento())

        let memento1: ArticleMemento = carataker.getMemento(index: 0)
        let memento2: ArticleMemento = carataker.getMemento(index: 1)

        article.restore(memento: memento1)
        print(article.text)

        article.restore(memento: memento2)
        print(article.text)
    }

    func testState() {
        let context = MobileAlertStateContext()

        context.alert()
        context.alert()

        sleep(2)

        context.setState(state: Vibration())

        context.alert()
        context.alert()

        sleep(2)
        context.setState(state: Silence())

        context.alert()
        context.alert()

    }

    func testInterpreter() {
        let cero = TerminalExpression(text: "0")
        let uno = TerminalExpression(text: "1")

        let containsOneOrZero = OrExpression(expression1: cero, expression2: uno)
        print(containsOneOrZero.interpret(context: "cero"))
        print(containsOneOrZero.interpret(context: "1"))

        let containsOneAndZero = AndExpression(expression1: cero, expression2: uno)
        print(containsOneAndZero.interpret(context: "24"))
        print(containsOneAndZero.interpret(context: "01"))
    }
}

