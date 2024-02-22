//
//  CaesarCipherEncryptor.swift
//  InterviewQuest
//
//  Created by Elliot Rapp on 2/21/24.
//

import Foundation



// Defines a function to encrypt a string using the Caesar Cipher method
func caesarCipherEncryptor(string: String, key: UInt32) -> String {
        var newCharacters = [Character]() // Initialize an empty array to hold the new shifted characters
   let newKey = key % 26 // Ensures the key is within the range 0-25, accounting for the alphabet's cyclic nature
    
    // Iterates over each character in the input string
    for letter in string {
        newCharacters.append(newLetterCode(letter, key))   // Encrypts the character and appends it to the array
    }
    
   return String(newCharacters) // Converts the array of characters back into a string and returns it
}

// Defines a helper function to shift a single character by the key amount
func newLetterCode(_ letter: Character,_ key: UInt32) -> Character {
    let newCode = letter.unicodeScalars.first!.value + key // Calculates the new character's ASCII value
    
    let code: UnicodeScalar? // Declares an optional UnicodeScalar to hold the new character
    
    // If the new ASCII value is less than or equal to 'z'
    if newCode <= 122 {
    code = UnicodeScalar(newCode)  // Use it directly
    } else {
    code = UnicodeScalar(96 + newCode % 122) // Otherwise, calculate a wrap-around value
    }
    
  return Character(code!)  // Convert the UnicodeScalar back into a Character and return it
}





















// Defines a function to encrypt a string using the Caesar Cipher method

     // Initialize an empty array to hold the new shifted characters
    // Ensures the key is within the range 0-25, accounting for the alphabet's cyclic nature
    
     // Iterates over each character in the input string
         // Encrypts the character and appends it to the array
    
    
    // Converts the array of characters back into a string and returns it


// Defines a helper function to shift a single character by the key amount

     // Calculates the new character's ASCII value
    
     // Declares an optional UnicodeScalar to hold the new character
    
     // If the new ASCII value is less than or equal to 'z'
         // Use it directly
    
         // Otherwise, calculate a wrap-around value
    
    
     // Convert the UnicodeScalar back into a Character and return it

