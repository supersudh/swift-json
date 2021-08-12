//
//  ApiInterface.swift
//  Api_JSON_data
//
//  Created by Sudharsan Ravikumar on 11/08/21.
//

import Foundation

struct Response: Codable {
    
    struct Weather: Codable {
        let description: String
        let id: Int
        let main: String
    }
    
    let name: String
    let weather: [Weather]
}

class ApiInterface {
    static let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=London&appid=c9258cc7197f32df92c0bcf8367b4cc0")
    
    static func getWeatherData() {
        let task = URLSession.shared.dataTask(with: ApiInterface.url!) { (data, response, error) in
            guard let data = data, error == nil else {
                print("Something went wrong")
                return
            }
            
            // have data
            var result: Response?
            do {
                result = try JSONDecoder().decode(Response.self, from: data)
            } catch {
                print("failed to convert \(error.localizedDescription)")
            }
            
            guard let json = result else {
                return
            }
            
            print(json.name)
            let description = json.weather[0].description
            print(description)
        }
        task.resume()
    }
}
