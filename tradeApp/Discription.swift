//
//  Discription.swift
//  tradeApp
//
//  Created by daisuke on 2020/10/22.
//

import SwiftUI

struct TradeDiscription: Identifiable {
    var id: Int
    let discription: String
    let title: String
}

struct Discription: View {
    var TradeDiscriptions: [TradeDiscription]
    
    var body: some View {
        List(TradeDiscriptions) { tradeDiscription in
            
            Text("\(tradeDiscription.title)")
                .multilineTextAlignment(.leading)
                .padding(.trailing, 7.0)
                .frame(width: 81.0, height: 22.0)
            Text("\(tradeDiscription.discription)")
        }
    }
}

struct Discription_Previews: PreviewProvider {
    static var previews: some View {
        Discription(TradeDiscriptions: [
        TradeDiscription(id: 1, discription: "Rank Correlation Indexの略で順位相関指数。直近の株価がどれだけ上昇してきたか、または下落してきたかということから、買われすぎか売られすぎかを判断する指標", title: "RCI"),
        TradeDiscription(id: 2, discription: "Relative Strength Indexの略で相対力指数。買われすぎか売られすぎかを判断する指標", title: "RSI"),
        TradeDiscription(id: 3, discription: "証券取引所などを通さずに、売り手と買い手が当事者同士で価格や売買数量などを決めて行う取引のこと。相対売買と呼ばれることも", title: "相対取引")])
    }
}
