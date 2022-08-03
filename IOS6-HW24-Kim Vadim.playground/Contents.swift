import Foundation

let mtgUrl = "https://api.magicthegathering.io"
let mtgPath = "/v1/cards"
let mtgBlackItems = [URLQueryItem(name: "name", value: "Black Lotus|Opt")]
let mtgRequestUrl = NetworkService.makeRequestUrl(baseURL: mtgUrl, path: mtgPath, queryItems: mtgBlackItems)

NetworkDataFetcher.fetchCards(urlRequest: mtgRequestUrl) { cards in
    cards?.cards.forEach { card in
        Card.displayCardInfoOf(card)
    }
}
