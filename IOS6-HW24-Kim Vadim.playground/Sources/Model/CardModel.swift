import Foundation

public struct Cards: Decodable {
    public let cards: [Card]
}

public struct Card: Decodable {
    let name: String?
    let manaCost: String?
    let type: String?
    let rarity: String?
    let setName: String?
    let artist: String?
    let power: String?
    let legalities: [LegalityElement]?

    struct LegalityElement: Decodable {
        let format: TypeOfFormat
        let legality: TypeOfLegality
    }

    enum TypeOfFormat: String, Decodable {
        case commander = "Commander"
        case duel = "Duel"
        case explorer = "Explorer"
        case gladiator = "Gladiator"
        case historic = "Historic"
        case historicbrawl = "Historicbrawl"
        case legacy = "Legacy"
        case modern = "Modern"
        case oldschool = "Oldschool"
        case pauper = "Pauper"
        case paupercommander = "Paupercommander"
        case penny = "Penny"
        case pioneer = "Pioneer"
        case premodern = "Premodern"
        case vintage = "Vintage"
    }

    enum TypeOfLegality: String, Decodable {
        case banned = "Banned"
        case legal = "Legal"
        case restricted = "Restricted"
    }

    public static func displayCardInfoOf(_ card: Card) {
        guard card.name == "Opt" || card.name == "Black Lotus" else { return }

        if let name = card.name {
            print("Название карты: \(name)")
        }

        if let type = card.type {
            print("Тип: \(type)")
        }

        if let rarity = card.rarity {
            print("Редкость: \(rarity)")
        }

        if let setName = card.setName {
            print("Название сета: \(setName)")
        }

        if let artist = card.artist {
            print("Создатель: \(artist)")
        }

        if let manaCost = card.manaCost {
            print("Требует маны: \(manaCost)")
        }

        if let power = card.power {
            print("Сила: \(power)")
        }

        if let legalities = card.legalities {
            print("Легальность использования:")
            for (index,item) in legalities.enumerated() {
                print("     \(index + 1)) Формат: \(item.format.rawValue). Легальность: \(item.legality.rawValue)")
            }
        }

        print("--------------------------\n")
    }
}
