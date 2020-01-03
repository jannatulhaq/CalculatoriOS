//
//  File.swift
//  Calculator
//
//  Created by Zaeni Hoque on 12/9/19.
//  Copyright © 2019 Zaeni Hoque. All rights reserved.
//

import Foundation

protocol CalculatorProtocol
{
    func add(number1: Int, number2: Int) -> Int
    func subtract(number1: Int, number2: Int) -> Int
    func multiply(number1: Int, number2: Int) -> Int
    func divide(number1: Int, number2: Int) -> Int
    func clear() -> Void
// add other methods for -, /,...
    
}
