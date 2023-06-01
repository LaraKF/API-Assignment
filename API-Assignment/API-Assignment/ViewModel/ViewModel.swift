//
//  ViewModel.swift
//  API-Assignment
//
//  Created by Lara K on 09/11/1444 AH.
//

import Foundation

class ContentViewModel: ObservableObject {
  @Published var items = [Model]()
    let api = "https://jsonplaceholder.typicode.com/todos"
    
    
  func fetchData() {
      
    guard let url = URL(string: api) else { return }
    URLSession.shared.dataTask(with: url) { (data, response, error) in
      do {
         if let data = data {
           let result = try JSONDecoder().decode([Model].self, from: data)
           DispatchQueue.main.async {
              self.items = result
           }
         } else {
           print("No data")
         }
      } catch (let error) {
         print(error.localizedDescription)
      }
     }.resume()
  }
}
