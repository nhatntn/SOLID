/* 
High-level modules should not depend on low-level modules. 
Both should depend on abstractions.
Abstractions should not depend on details.
Details should depend on abstractions.
*/

import Foundation

protocol Workable {
    func work()
}

struct Employee: Workable {
    func work() {
        print("working...")
    }
}

struct Employer {
    var workables: [Workable]

    func manage() {
        workables.forEach { workable in
            workable.work()
        }
    }
}

func example() {
    let employer = Employer(workables: [Employee()])
    employer.manage()
}
