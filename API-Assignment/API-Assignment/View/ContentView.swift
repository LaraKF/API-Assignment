//
//  ContentView.swift
//  API-Assignment
//
//  Created by Lara K on 09/11/1444 AH.
//

import SwiftUI

struct ContentView: View {
 @ObservedObject var viewModel = ContentViewModel()
    var body: some View {
     NavigationView {
        VStack {
            List(viewModel.items, id: \.id) { item in
                       VStack(alignment: .leading) {
                          Text(item.title)
                          Text(item.completed.description)
                            .font(.system(size: 11))
                            .foregroundColor(.gray)
                   }
                }.listStyle(GroupedListStyle())
              }.onAppear(perform: {
                 viewModel.fetchData()
              })
             .navigationBarTitle("Info")
           }
          }
        }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
