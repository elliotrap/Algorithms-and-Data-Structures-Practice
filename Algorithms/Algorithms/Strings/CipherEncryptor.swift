//
//  CipherEncryptor.swift
//  Algorithms
//
//  Created by Elliot Rapp on 2/22/24.


import Foundation




func caesarCipherEncryptor(string: String, key: UInt32) -> String {
    var newLetters = [Character]()
    let newKey = key % 26
    
    for letters in string {
     newLetters.append(newLetterCode(letters, key))
    }
    
    return String(newLetters)
}

func newLetterCode(_ letters: Character,_ key: UInt32) -> Character {
    
    let letterCode = letters.unicodeScalars.first!.value + key
    
    var code: UnicodeScalar?
    
    if letterCode <= 122 {
        code = UnicodeScalar(letterCode)
    } else {
        code = UnicodeScalar(26 % letterCode + key)
    }
    
    return Character(code!)
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

