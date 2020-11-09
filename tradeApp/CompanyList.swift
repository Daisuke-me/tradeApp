//
//  CopanyList.swift
//  tradeApp
//
//  Created by daisuke on 2020/10/12.
//

import SwiftUI

//struct Company: Identifiable {
//    var id: Int
//    let code: String
//    let name: String
//    let stockPrice: Float
//
//}

struct CompanyList: View {
//    var Companies: [Company]
    @State var symbol: String
    @State var name1: String
    @State var price: Double
    
    var body: some View {
        HStack{
            Text("\(symbol)")
                .multilineTextAlignment(.leading)
                .padding(.trailing, 7.0)
                .frame(width: 70.0, height: 22.0)
            Text("\(name1)")
                .frame(width: 70.0, height: 22.0)
            Text("\(price)")
                .padding(.leading, 20.0)
                }
    }
}

struct CompanyList_Previews: PreviewProvider {
    static var previews: some View {
        CompanyList(symbol: "A0030", name1: "AAPL", price: 121.27)
    }
}
