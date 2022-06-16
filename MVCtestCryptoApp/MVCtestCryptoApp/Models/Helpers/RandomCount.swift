//
//  RandomCount.swift
//  MVCtestCryptoApp
//
//  Created by Сергей Саченко on 16.06.2022.
//

import Foundation

class RandomCount {
    func getRandomCount(data: [Crypto]) -> Int {
        let randomCount = Int.random(in: 0 ..< data.count)
        return randomCount
    }
}
