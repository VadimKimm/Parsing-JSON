import Foundation

let mtgUrl = "https://api.magicthegathering.io"
let mtgPath = "/v1/cards"

//MARK: - Black Lotus request
let mtgBlackLotusItems = [URLQueryItem(name: "name", value: "Black Lotus")]
let mtgBlackLotusRequestUrl = NetworkService.makeRequestUrl(baseURL: mtgUrl, path: mtgPath, queryItems: mtgBlackLotusItems)
