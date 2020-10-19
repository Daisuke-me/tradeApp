//
//  TradeJsonModel.swift
//  tradeApp
//
//  Created by daisuke on 2020/10/19.
//

import Foundation

struct Results: Codable {
    let items: [Item]
}

struct Item: Codable, Identifiable {
    var id: String
    let symbol: String
    let name : String
    let price : Float
    let changesPercentage : Float
    let change : Float
    let dayLow : Float
    let dayHigh : Float
    let yearHigh : Float
    let yearLow : Float
    let marketCap : Float
    let priceAvg50 : Float
    let priceAvg200 : Float
    let volume : Float
    let avgVolume : Float
    let exchange : String
    let open : Float
    let previousClose : Float
    let eps : Float
    let pe : Float
    let earningsAnnouncement : Date
    let sharesOutstanding : Int
    let timestamp : Int
}
