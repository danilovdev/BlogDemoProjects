extension String {
    
    subscript (i: Int) -> Character {
        let index = self.index(self.startIndex, offsetBy: i)
        let character = self[index]
        return character
    }
}

let test1 = "abbbc"
let test2 = "aaa"
let test3 = "abc"
let test4 = "aabbbcccdeee"

func compress(_ str: String) -> String {
    var result = ""
    var sum = 1
    for i in 0..<(str.count - 1) {
        if (str[i] == str[i + 1]) {
            sum += 1
        } else {
            result += "\(str[i])\(sum)"
            sum = 1
        }
    }
    result += "\(str[str.count - 1])\(sum)"
    return result.count < str.count ? result : str
}

print(compress(test1)) // abbbc -> abbbc
print(compress(test2)) // aaa -> a3
print(compress(test3)) // abc -> abc
print(compress(test4)) // aabbbcccdeee -> a2b3c3d1e3

func compress_v2(_ str: String) -> String {
    var result = ""
    var sum = 0
    for i in 0..<str.count {
        sum += 1
        if (i + 1 == str.count) || (str[i] != str[i + 1]) {
            result += "\(str[i])\(sum)"
            sum = 0
        }
    }
    return result.count < str.count ? result : str
}

print(compress_v2(test1)) // abbbc -> abbbc
print(compress_v2(test2)) // aaa -> a3
print(compress_v2(test3)) // abc -> abc
print(compress_v2(test4)) // aabbbcccdeee -> a2b3c3d1e3

func compress_v3(_ str: String) -> String {
    var sum = 0
    var result = ""
    var currentCharacter: Character?
    for ch in str {
        if ch == currentCharacter {
            sum += 1
        } else {
            if let current = currentCharacter {
                result.append("\(current)\(sum)")
            }
            currentCharacter = ch
            sum += 1
        }
    }
    if let current = currentCharacter {
        result.append("\(current)\(sum)")
    }
    return result.count < str.count ? result : str
}

print(compress_v3(test1)) // abbbc -> abbbc
print(compress_v3(test2)) // aaa -> a3
print(compress_v3(test3)) // abc -> abc
print(compress_v3(test4)) // aabbbcccdeee -> a2b3c3d1e3



