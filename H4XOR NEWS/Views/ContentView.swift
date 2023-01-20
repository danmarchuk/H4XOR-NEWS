//
//  ContentView.swift
//  H4XOR NEWS
//
//  Created by Данік on 17/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            // create a list that takes items from posts and puts them into the TextView
            List(networkManager.posts){ post in
                
                NavigationLink(destination: DetailView(url: post.url)){
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                        
                    }
                }
                
            }
            .navigationTitle("H4XOR NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//let posts = [
//    Post(id: "1", title: "Hello world"),
//    Post(id: "2", title: "Goodbye world"),
//    Post(id: "3", title: "See you world")
//]

