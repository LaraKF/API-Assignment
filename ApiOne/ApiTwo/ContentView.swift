//
//  ContentView.swift
//  ApiTwo
//
//  Created by Lara K on 12/11/1444 AH.
//

import SwiftUI

//var myURL = "https://jsonplaceholder.typicode.com/users"
//
//
//
//struct User: Codable, Identifiable {
//    var id = UUID()
//    let username: String
//    let name: String
//}
//
//
//struct ContentView: View {
//    @State var users = [User] ()
//
//    var body: some View {
//        NavigationView {
//            List(users, id: \.id) { user in
//                VStack(alignment: .leading) {
//                    Text(user.username)
//                        .font(.headline)
//                        .foregroundColor(Color.blue)
//                    Text(user.name)
//                        .font(.body)
//                        .foregroundColor(.secondary)
//                }
//            }
//
//            .task {
//                await fetchData()
//            }
//        }
//    }
//
//
//            func fetchData () async {
//                guard let url = URL(string: myURL) else {
//                    print ("Invalid URL")
//                    return
//                }
//                do{
//                    let (data, response) = try await URLSession.shared.data(from: url)
//                    print(data)
//                    print(response)
//
//                    let decoderProduct = try JSONDecoder().decode([User].self, from: data)
//                    users = decoderProduct //***
//
//                } catch{
//                    print("did not feach the data \(error)")
//
//                }
//            }
//        }
//
//    struct ContentView_Previews: PreviewProvider {
//        static var previews: some View {
//            ContentView()
//        }
//    }
//
///*******

//var myURL = "http://api.randomuser.me/"
//
//struct ResultRespones: Codable {
//    let results: [Result]
//}
//
//
//struct Result: Codable, Identifiable {
//    let gender: String
//    let name: Name
//    let email: String
//    let phone, cell: String
//    let id: ID
//    let nat: String
//}
//
//
//struct ContentView: View {
//    @State var users = [User] ()
//    
//    var body: some View {
//        NavigationView {
//            List(users, id: \.id) { user in
//                VStack(alignment: .leading) {
//                    Text(user.username)
//                        .font(.headline)
//                        .foregroundColor(Color.blue)
//                    Text(user.name)
//                        .font(.body)
//                        .foregroundColor(.secondary)
//                }
//            }
//            
//            .task {
//                await fetchData()
//            }
//        }
//    }
//    
//    
//            func fetchData () async {
//                guard let url = URL(string: myURL) else {
//                    print ("Invalid URL")
//                    return
//                }
//                do{
//                    let (data, response) = try await URLSession.shared.data(from: url)
//                    print(data)
//                    print(response)
//    
//                    let decoderProduct = try JSONDecoder().decode([User].self, from: data)
//                    users = decoderProduct //***
//    
//                } catch{
//                    print("did not feach the data \(error)")
//    
//                }
//            }
//        }
//
//    struct ContentView_Previews: PreviewProvider {
//        static var previews: some View {
//            ContentView()
//        }
//    }
//    
//
//
