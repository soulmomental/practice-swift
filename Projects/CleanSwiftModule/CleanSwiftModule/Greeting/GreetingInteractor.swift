//
//  GreetingInteractor.swift
//  CleanSwiftModule
//
//  Created by Виталий Шаповалов on 08.01.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol GreetingBusinessLogic {
    func showGreeting(request: GreetingRequest)
}

protocol GreetingDataStore {
    var person: Person? { get }
}

class GreetingInteractor: GreetingBusinessLogic, GreetingDataStore {
    
    var presenter: GreetingPresentationLogic?  
    var person: Person?
    
    // MARK: Do something
    
    func showGreeting(request: Greeting.ShowGreeting.Request) {
        let person = Person(name: "Tim", surname: "Cook")
        let response = GreetingResponse(name: person.name, surname: person.surname)
        presenter?.presentGreeting(response: response)
    }
}
