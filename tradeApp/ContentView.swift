//
//  ContentView.swift
//  tradeApp
//
//  Created by daisuke on 2020/10/10.
//

import SwiftUI

struct ContentView: View {
    @State var NewCompany:String = ""
    @State var TestCompany:String = ""
    
    func addCompany(adcp: String) {
        self.TestCompany = adcp
    }
    
    var body: some View {
        VStack {
            Text("株アプリ")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.blue)
            HStack {
                TextField("会社名", text: $NewCompany).textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    addCompany(adcp: self.NewCompany)
                } ) {
                    Text("検索")
                }
            }
            Text("検索結果：" + self.TestCompany)
            Spacer()
            Text("お気に入り銘柄")
                .font(.title2)
                .padding(.horizontal)
                .border(Color.blue, width: 2)
            Spacer()
            CompanyList(Companies: [
                Company(id: 1, code: "A0030", name: "AAPL", stockPrice: 121.27),
                Company(id: 2, code: "A3311", name: "AMZN", stockPrice: 126.49),
                Company(id: 3, code: "A6161", name: "FB", stockPrice: 271.82),
                Company(id: 4, code: "A4987", name: "GOOGL", stockPrice: 1543.5)
            ]).border(Color.blue).font(.caption)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .padding()
        }
    }
}
