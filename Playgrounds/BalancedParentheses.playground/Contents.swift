
func isBalancedParenthesisV1(_ string: String) -> Bool {
    var balance = 0
    for ch in string {
        if ch == "(" {
            balance += 1
        } else if ch == ")" {
            balance -= 1
        }
    }
    let result = (balance == 0)
    return result
}

print(isBalancedParenthesisV1("((()))"))
print(isBalancedParenthesisV1("((())))"))
print(isBalancedParenthesisV1(")((())"))

func isBalancedParenthesisV2(_ string: String) -> Bool {
    var balance = 0
    for ch in string {
        if ch == "(" {
            balance += 1
        } else if ch == ")" {
            if (balance == 0) {
                return false
            } else {
                balance -= 1
            }
        }
    }
    let result = (balance == 0)
    return result
}

print(isBalancedParenthesisV2("((()))"))
print(isBalancedParenthesisV2("((())))"))
print(isBalancedParenthesisV2(")((())"))

struct Stack<T> {
    
    var array: [T] = []
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    mutating func push(_ element: T) {
        array.append(element)
    }
    
    mutating func pop() -> T? {
        if (!isEmpty) {
            let value = array.popLast()
            return value
        }
        return nil
    }
    
    func peek() -> T? {
        if (!isEmpty) {
            let value = array.last
            return value
        }
        return nil
    }
}

func isBalancedParenthesisV3(_ string: String) -> Bool {
    
    func isValidPair(_ ch1: Character, _ ch2: Character) -> Bool {
        if (ch1 == "(" && ch2 == ")") {
            return true
        } else if (ch1 == "{" && ch2 == "}") {
            return true
        } else if (ch1 == "[" && ch2 == "]") {
            return true
        }
        return false
    }
    
    var stack = Stack<Character>()
    for ch in string {
        if (ch == "(" || ch == "{" || ch == "[") {
            stack.push(ch)
        }
        if (ch == ")" || ch == "}" || ch == "]") {
            if (stack.isEmpty) {
                return false
            } else if (!isValidPair(stack.pop()!, ch)) {
                return false
            }
        }
    }
    let result = stack.isEmpty
    return result
}

print(isBalancedParenthesisV3("{([])}"))
print(isBalancedParenthesisV3("(((}}}"))
print(isBalancedParenthesisV3("[{(())}]"))


