//
//  Chapter1.swift
//  Cracking_The_Coding_Interview
//
//  Created by Stephen Clark on 3/29/17.
//  Copyright © 2017 Stephen Clark. All rights reserved.
//

import Foundation

class Chapter1: Chapter
{
    override func run()
    {
        print(isUnique(str1: "Steve"))
        print(isUnique(str1: "ABCD"))
    }
    
    /*
        1.1 - isUnique()
        
        Implement an algorithm to determine if a string has all unique characters.  What if you
        cannot use additional data structures?
    */
    func isUnique(str1: String) -> Bool
    {
        // Create a character array of the input string to loop through
        let charArray = str1.characters
        
        // Check each character against every other character in the string.  If there is more than
        // one instance return false
        for i in charArray
        {
            var charCount: Int = 0
            for j in charArray
            {
                if (i == j) { charCount += 1 }
            }
            
            if (charCount > 1) { return false }
        }
        
        return true;
    }
}
