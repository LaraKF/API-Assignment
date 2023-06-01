//
//  TheEarthScienceViewModel.swift
//  API-Assignment
//
//  Created by Lara K on 09/11/1444 AH.
//

//import Foundation

//class ScienceViewModel: ObservableObject {
//  @Published var items = [ScienceModel]()
//
//
//  func fetchData() {
//    let api = "https://api.artic.edu/api/v1/artworks?fields=id,title,artist_display,date_display,main_reference_number"
//
//    guard let url = URL(string: api) else { return }
//    URLSession.shared.dataTask(with: url) { (data, response, error) in
//      do {
//         if let data = data {
//           let result = try JSONDecoder().decode([ScienceModel].self, from: data)
//           DispatchQueue.main.async {
//              self.items = result
//           }
//         } else {
//           print("No data")
//         }
//      } catch (let error) {
//         print(error.localizedDescription)
//      }
//     }.resume()
//  }
//}

