//
//  Crypto.swift
//  MVCtestCryptoApp
//
//  Created by Сергей Саченко on 16.06.2022.
//
// Model

import Foundation

struct Crypto {
    var name: String
    var ticker: String
    var value: Int
}

extension Crypto {
    static var testData = [
        Crypto(name: "Bitcoin", ticker: "BTC", value: 21652),
        Crypto(name: "Ethereum", ticker: "ETH", value: 1157),
        Crypto(name: "Ripple", ticker: "XRP", value: 580),
        Crypto(name: "Stellar", ticker: "XLM", value: 15),
        Crypto(name: "Algorand", ticker: "Algo", value: 2)
    ]
}
