protocol Worker {
    func eat()
    func work()
}

class Human: Worker {
    func eat() {
        print("eating")
    }

    func work() {
        print("working")
    }
}


class Robot: Worker {
    func eat() {
        // Robots can't eat!
        fatalError("Robots does not eat!")
    }

    func work() {
        print("working")
    }
}
