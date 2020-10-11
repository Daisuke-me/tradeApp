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
            Text(self.TestCompany)
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
