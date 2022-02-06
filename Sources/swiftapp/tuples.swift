//
//  tuples.swift
//  
//
//  Created by Edenilson Pineda on 5/2/22.
//


/*
 Tuples group multiple values into a single compound value.

 The values within a tuple can be of any type
 and don’t have to be of the same type as each other.
 */

import Foundation

class Tuple {
    func printTupleValues(){
        let http404Error = (404, "Not Found")

        let (statusCode, errorMessage) = http404Error
        print("\nThe status code is: \(statusCode)")
        
        print("The error message is: \(errorMessage)")
    }
}
