//
//  Extentions.swift
//  TymchEnglish
//
//  Created by Irene Tymchenko on 10.12.2023.
//

import Foundation

//typealias FavouritePoems = [Poem]
typealias FavouritePoems = Set<Poem>

extension FavouritePoems: RawRepresentable {
    public init?(rawValue: String) {
        guard let data = rawValue.data(using: .utf8),
            let result = try? JSONDecoder().decode(FavouritePoems.self, from: data)
        else {
            return nil
        }
        self = result
    }

    public var rawValue: String {
        guard let data = try? JSONEncoder().encode(self),
            let result = String(data: data, encoding: .utf8)
        else {
            return "[]"
        }
        return result
    }
}


