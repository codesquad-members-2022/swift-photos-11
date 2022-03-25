import Foundation

struct Doodle: Codable {
    let title: String
    let image: String
    let date: String
}

enum DoodleServiceError: Error {
    case loadPath
    case convertDatatype
}


protocol DoodleServiceProtocol {
    func readJson() -> Result<[Doodle], DoodleServiceError>
}

struct DoodleFileManager: DoodleServiceProtocol {
    func readJson() -> Result<[Doodle], DoodleServiceError> {
        guard let path = Bundle.main.path(forResource: "doodle", ofType: "json") else {
            return .failure(.loadPath)
        }

        guard let jsonString = try? String(contentsOfFile: path) else {
            return .failure(.convertDatatype)
        }
        
        let decoder = JSONDecoder()
        let data = jsonString.data(using: .utf8)
        guard let data = data,
           let decodedModel = try? decoder.decode([Doodle].self, from: data) else {
            return .failure(.convertDatatype)
        }
        return .success(decodedModel)
    }
}
