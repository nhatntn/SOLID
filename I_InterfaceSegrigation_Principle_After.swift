// Many client-specific interfaces are better than one general-purpose interface

protocol Workable {
    func work()
}

protocol Feedable {
    func eat()
}

class Human: Feedable, Workable {
    func eat() {
        print("eating")
    }

    func work() {
        print("working")
    }
}

class Robot: Workable {
    func work() {
        print("working")
    }
}
