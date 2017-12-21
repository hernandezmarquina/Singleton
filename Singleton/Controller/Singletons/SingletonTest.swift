//
//  SingletonTest.swift
//  Singleton
//
//  Created by Jonathan Hernandez on 12/21/17.
//  Copyright © 2017 Jonathan Hdez. All rights reserved.
//

import Foundation

class SingletonTest {
    
    private enum SigletonError : Error {
        case reflection(message: String)
    }
    
    var user = User(name: "Default Name", age: 0)
    
    private static var singletonInstance : SingletonTest?
    
    // Private contructor
    private init() throws {
        
        // Prevent form the reflection api.
        guard SingletonTest.singletonInstance == nil else {
            throw SigletonError.reflection(message: "Use getInstance() method to get the single instance of this class.")
        }
    }
    
    static func getInstance() -> SingletonTest {
        
        if SingletonTest.singletonInstance == nil {
            
            do {
                // If there is no instance available, create new one.
                try SingletonTest.singletonInstance = SingletonTest()
            } catch {
                print(error)
            }
        }
        
        return SingletonTest.singletonInstance!
    }
}

