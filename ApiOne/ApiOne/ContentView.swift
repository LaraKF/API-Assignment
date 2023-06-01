//
//  ContentView.swift
//  ApiOne
//
//  Created by Lara K on 12/11/1444 AH.
//

import SwiftUI

var myURL = "https://jsonplaceholder.typicode.com/users"


struct UserModel: Codable {
    var id: Int
    var name: String
    var username: String
    var email: String
}

struct ContentView: View {
    @State private var users = [UserModel]()
    
    var body: some View {
        NavigationView {
            List(users, id: \.id) { user in
                VStack(alignment: .leading) {
                    Text(user.name)
                        .font(.headline)
                        .foregroundColor(Color.black)
                    Text(user.username)
                        .font(.body)
                        .foregroundColor(.gray)
                    Text(user.email)
                        .font(.body)
                        .foregroundColor(.gray)
                }
            }
            .navigationBarTitle("Users Info")
            .task {
                await fetchData()
            }
        }
    }
    

func fetchData () async {
    guard let url = URL(string: myURL) else {
        print ("Invalid URL")
        return
    }
        do{
            let (data, response) = try await URLSession.shared.data(from: url)
            print(data)
            print(response)
            
            let decoderProduct = try JSONDecoder().decode([UserModel].self, from: data)
            users = decoderProduct

        } catch{
            print("did not feach the data \(error)")
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
