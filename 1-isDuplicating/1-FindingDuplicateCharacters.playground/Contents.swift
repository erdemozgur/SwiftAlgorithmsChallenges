import UIKit

var str = "Hello, word"


func challenge1a(input: String) -> Bool {
    
    var usedCharacters: [Character] = []
    var countUC: [Character] = []
    
    for letter in input {
        
        if usedCharacters.contains(letter){
            countUC.append(letter)
            return false
        }
        
        usedCharacters.append(letter)
        
    }
    print(countUC)
    return true
}

challenge1a(input: str)


func challenge1b(input: String) -> Bool {
    return Set(input).count == input.count
}

challenge1b(input: str)


