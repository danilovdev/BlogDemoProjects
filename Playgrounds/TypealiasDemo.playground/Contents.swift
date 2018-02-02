
typealias Name = String

var firstName: Name
firstName = "Anna"
firstName = String("Aleksei")
firstName = Name("Jack")
print(firstName.count) // print 7

func getFirstName() -> Name {
    return "Aleksei"
}

func setFirstName(name: Name) {
    
}

