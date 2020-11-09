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

struct Item: Codable {
    let symbol: String
    let name : String
    let price : Double
    let changesPercentage : Double
    let change : Double
    let dayLow : Double
    let dayHigh : Double
    let yearHigh : Double
    let yearLow : Double
    let marketCap : Int
    let priceAvg50 : Double
    let priceAvg200 : Double
    let volume : Int
    let avgVolume : Int
    let exchange : String
    let open : Double
    let previousClose : Double
    let eps : Double
    let pe : Double
    let earningsAnnouncement : String
    let sharesOutstanding : Int
    let timestamp : Int
}

let avgVolume = 163392426;
let change = -0.135;
let changesPercentage = -0.11;
let dayHigh = 119.2;
let dayLow = 116.13;
let earningsAnnouncement = "2020-10-29T16:30:00.000+0000";
let eps = 3.28;
let exchange = "NASDAQ";
let marketCap = 2017943617536;
let name = "Apple Inc.";
let open = "117.95";
let pe = 36.185978;
let previousClose = "118.825";
let price = "118.69";
let priceAvg200 = "100.44685";
let priceAvg50 = 115.06686;
let sharesOutstanding = 17001799794;
let symbol = "AAPL";
let timestamp = 1604854095;
let volume = 111474402;
let yearHigh = "137.98";
let yearLow = "53.1525";
