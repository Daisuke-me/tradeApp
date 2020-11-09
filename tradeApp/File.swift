//
//  File.swift
//  tradeApp
//
//  Created by daisuke on 2020/10/19.
//

import Foundation

class FmpSearch: ObservableObject {
//    @Published var results:Results?
    @Published var items:Item?
    
    func readPlist() -> (String){
        var property: Dictionary<String, Any> = [:]
        
        let filePath = Bundle.main.path(forResource: "settings", ofType: "plist")
        let data = NSDictionary(contentsOfFile: filePath!)
        
        if let dataDictionary: [String:Any] = data as? [String:Any] {
            property = data as! Dictionary<String, Any>
        }
        
        let apiKey = property["fInancialApiKey"]
        print(apiKey ?? "apikey取り出し")
        return apiKey as! String
    }

    
    func infoTrade(company: String) ->() {
        
        let APIKey = readPlist()
        
        guard let urlStr = "https://financialmodelingprep.com/api/v3/quote/\(company)?apikey=\(APIKey)".addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlQueryAllowed) else {
            fatalError("URL String error")
        }
        guard let url = URL(string: urlStr) else {
            fatalError("URL convert error")
        }
        var request = URLRequest(url: url)
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        let sendAPI = URLSession.shared.dataTask(with: url) { data, res, err in
            guard err == nil else {
                    print(err!)
                    return
                }
            guard let data = data else {
                    print("Data is empty")
                    return
                }
            let json = try! JSONSerialization.jsonObject(with: data,options: [])
            print(data)
            print(json)
            if let jsonData: Data = data {
                let decodedData: Item
                do {
                    decodedData = try JSONDecoder().decode(Item.self, from: jsonData)
                } catch {
                    print(error.localizedDescription)
                    fatalError("Json decode error")
                }
                DispatchQueue.main.async {
                    self.items = decodedData
                }
            } else {
                fatalError("request error")
            }
        }
        sendAPI.resume()
    }
}
