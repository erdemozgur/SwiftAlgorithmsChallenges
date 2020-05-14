//  Created by Erdem Özgür on 14.05.2020.
//  Copyright © 2020 Erdem Özgür. All rights reserved.

import UIKit

var ex1 = "rotator"                     //true
var ex2 = "Rats live on no evil star"   //true
var ex3 = "Never odd or even"           //false
var ex4 = "Hello, world"                //false

//My Solution For This Challenge

func isPalindrome(text: String) -> Bool {
    
    let reversedText = text.reversed()
    
    let mappedReversedText = reversedText.map{String($0.lowercased())}      //Converting reversed text to String array with lowercased.
    let mappedText = text.map{String($0.lowercased())}                      //Converting text to String array with lowercased.
    
    print("TEXT: " , mappedText)
    print("REVERSED: " , mappedReversedText)
    
    return mappedText == mappedReversedText
}

isPalindrome(text: ex1)


//Book's Solution

func challenge2(input: String) -> Bool {
   let lowercase = input.lowercased()
   return lowercase.reversed() == Array(lowercase)
}
challenge2(input: ex1)




