import Foundation

class Data {
    
}
// DataManager break SRP
// class DataManager {
//     func handle() {
//         let data = loadData()
//         let models = parse(data)
        
//         save(list: models)
//     }

//     func loadData() -> Data {
//         return Data()
//     }
    
//     func parse(_ data: Data) -> [String] {
//         return [String]()
//     }
    
//     func save(list: [String]) {
//         //save models
//     }
// }

//Refactor code

class DataManager {
    let apiHandler: APIHandler
    let dataParser: DataParser
    let storageHandler: StorageHandler
    
    init(apiHandler: APIHandler, dataParser: DataParser, storageHandler: StorageHandler) {
        self.apiHandler = apiHandler
        self.dataParser = dataParser
        self.storageHandler = storageHandler
    }
    
    func handleData() {
        let data = apiHandler.loadData()
        let models = dataParser.parse(data)
        storageHandler.save(list: models)
    }
}

class APIHandler {
    func loadData() -> Data {
        return Data()
    }
}

class DataParser {
    func parse(_ data: Data) -> [String] {
        return [String]()
    }
}

class StorageHandler {
    func save(list: [String]) {
        //save data
    }
}



