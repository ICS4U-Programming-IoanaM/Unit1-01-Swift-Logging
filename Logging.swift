import Foundation
//
//  TryCatch.swift
//
//  Created by Ioana Marinescu
//  Created on 2024/02/23
//  Version 1.0
//  Copyright (c) 2024 Ioana Marinescu. All rights reserved.
//
//  A program that calculates the volume of a sphere, with try catch.

// creates custom errors
enum InputError: Error {
  // invalid input error
  case invalidInput
}

// function to get user input that returns a double
func userInput() throws -> Float {
  // 
  print("What size are your logs? (0.25m, 0.5m, or 1m)")
  guard let input = readLine(), let logSize = Float(input) else {
    throw InputError.invalidInput
  }
  return logSize
}

do {
  // calls function to get user input and 'tries' it
  let logSize = try userInput()

// checks if user entered one of the three options given to the user
  if logSize != 0.25 && logSize != 0.5 && logSize != 1 {
    print("Invalid input, please enter one of the three options.")
  } else {
    // calculates how many logs can fit in the truck
    let logsOnTruck = Int(1100 / (20 * logSize))

    // output result to console.
    print("The truck can hold \(logsOnTruck) logs on the truck.")
  }
  // if user imputed invalid input
} catch InputError.invalidInput {
  print("Invalid input, please enter one of the three options.")

  // any other invalid input
} catch {
  print("Invalid input, please enter one of the three options.")
}
