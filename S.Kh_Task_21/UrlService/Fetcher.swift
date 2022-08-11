//
//  Fetcher.swift
//  S.Kh_Task_21
//
//  Created by Saba Khitaridze on 11.08.22.
//

import Foundation

class Fetcher {
    
    static func fetchData<T: Codable>(with urlString: String, as model: T.Type, onCompletion: @escaping (T) -> Void) {
        let url = URL(string: urlString)
        let session = URLSession.shared

        if let urlSource = url {
            let task = session.dataTask(with: urlSource) { data, response, error in
                if error == nil, let data = data {
                    //Parsing JSON
                    let decoder = JSONDecoder()
                    do {
                        let fetchedData = try decoder.decode(model, from: data)
                        DispatchQueue.main.async {
                            onCompletion(fetchedData)                            
                        }
                    } catch {
                        print("error fetching data \(error.localizedDescription)")
                    }
                }
            }
            //API call
            task.resume()
        }
    }
}
