//
//  ContentView.swift
//  tradeApp
//
//  Created by daisuke on 2020/10/10.
//

import SwiftUI

struct ContentView: View {
    @State var NewCompany:String = ""
    
    var body: some View {
        VStack {
            Text("株アプリ")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.blue)
            HStack {
                TextField("会社名", text: $NewCompany).textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {} ) {
                    Text("検索")
                }
            }
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
