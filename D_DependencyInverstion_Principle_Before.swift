import Foundation

struct Employee {
    func work() {
        print("working...")
    }
}

struct Employer {
    var employees: [Employee]
    
    func manage() {
        employees.forEach {
            $0.work()
        }
    }
}

func run() {
    let employer = Employer(employees: [Employee]())
    employer.manage()
}
