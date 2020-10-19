//
//  CopanyList.swift
//  tradeApp
//
//  Created by daisuke on 2020/10/12.
//

import SwiftUI

struct Company: Identifiable {
    var id: Int
    let code: String
    let name: String
    let stockPrice: Float

}

struct CompanyList: View {
    var Companies: [Company]
    
    var body: some View {
        List(Companies) { company in
            
            Text("\(company.code)")
                .multilineTextAlignment(.leading)
                .padding(.trailing, 7.0)
                .frame(width: 70.0, height: 22.0)
            Text("\(company.name)")
                .frame(width: 70.0, height: 22.0)
            Text("\(company.stockPrice)")
                .padding(.leading, 20.0)
            
        }
    }
}

struct CompanyList_Previews: PreviewProvider {
    static var previews: some View {
        CompanyList(Companies: [
            Company(id: 1, code: "A0030", name: "AAPL", stockPrice: 121.27),
            Company(id: 2, code: "A3311", name: "AMZN", stockPrice: 126.49),
            Company(id: 3, code: "A6161", name: "FB", stockPrice: 271.82),
            Company(id: 4, code: "A4987", name: "GOOGL", stockPrice: 1543.5)
        ])
    }
}
