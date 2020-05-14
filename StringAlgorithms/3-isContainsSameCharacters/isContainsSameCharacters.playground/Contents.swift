//  Created by Erdem Özgür on 14.05.2020.
//  Copyright © 2020 Erdem Özgür. All rights reserved.

import UIKit

let ex11 = "abca"   //true
let ex12 = "abca"

let ex21 = "abc"    //false
let ex22 = "Abc"

let ex31 = "a1 b2"  //true
let ex32 = "b1 a2"

//My solution
func stringsContainTheSameCharacters(firstString: String, secondString: String) -> Bool {
    
    let firstMapped  = firstString.map{String($0)}
    let secondMapped = secondString.map{String($0)}
   
    let firstSorted = firstMapped.sorted()
    let secondSorted = secondMapped.sorted()
    
    return firstSorted == secondSorted
}

stringsContainTheSameCharacters(firstString: ex11, secondString: ex12)
stringsContainTheSameCharacters(firstString: ex21, secondString: ex22)
stringsContainTheSameCharacters(firstString: ex31, secondString: ex32)


//Book's Solution
func challenge3b(string1: String, string2: String) -> Bool {
   let array1 = Array(string1)
   let array2 = Array(string2)
   return array1.count == array2.count && array1.sorted() == array2.sorted()
}

challenge3b(string1: ex11, string2: ex12)
challenge3b(string1: ex21, string2: ex22)
challenge3b(string1: ex31, string2: ex32)

