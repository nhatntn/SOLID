import Foundation

// class BankCardMethod {
//     let aliasName: String
  
//     init(aliasName: String) {
//         self.aliasName = aliasName  
//     }
  
//     func isAvailable() -> Bool { 
//       return true 
//     }
// }

// class PaymentManager {
//   let cardMethods = [BankCardMethod]()
  
//   func showAvailablePaymentMethod() {
//       cardMethods.forEach {
//           if $0.isAvailable() {
//               print("\($0.aliasName) is available")
//           }
//       }
//   }
// }

protocol Payable {
    var aliasName: String {get set}
    func isAvailable() -> Bool
}

class BankCardMethod: Payable {
    var aliasName: String
  
    init(aliasName: String) {
        self.aliasName = aliasName  
    }
  
    func isAvailable() -> Bool { 
      return true 
    }
}

class BankAccountMethod: Payable {
    var aliasName: String
  
    init(aliasName: String) {
        self.aliasName = aliasName  
    }
  
    func isAvailable() -> Bool { 
      return true 
    }
}

class PaymentManager {
  let methods = [Payable]()
  
  func showAvailablePaymentMethod() {
      methods.forEach {
          if $0.isAvailable() {
              print("\($0.aliasName) is available")
          }
      }
  }
}
