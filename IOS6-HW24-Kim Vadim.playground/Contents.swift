import Foundation

let mtgUrl = "https://api.magicthegathering.io"
let mtgPath = "/v1/cards"

//MARK: - Black Lotus request
let mtgBlackLotusItems = [URLQueryItem(name: "name", value: "Black Lotus")]
let mtgBlackLotusRequestUrl = NetworkService.makeRequestUrl(baseURL: mtgUrl, path: mtgPath, queryItems: mtgBlackLotusItems)

NetworkDataFetcher.fetchCards(urlRequest: mtgBlackLotusRequestUrl) { cards in
    cards?.cards.forEach { card in
        Card.displayCardInfoOf(card)
    }
}

//MARK: - Opt request
let mtgOptItems = [URLQueryItem(name: "name", value: "Opt")]
let mtgOptRequestUrl = NetworkService.makeRequestUrl(baseURL: mtgUrl, path: mtgPath, queryItems: mtgOptItems)

NetworkDataFetcher.fetchCards(urlRequest: mtgOptRequestUrl) { cards in
    cards?.cards.forEach { card in
        Card.displayCardInfoOf(card)
    }
}
