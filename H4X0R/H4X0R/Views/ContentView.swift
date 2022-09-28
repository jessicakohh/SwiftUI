//
//  ContentView.swift
//  H4X0R
//
//  Created by juyeong koh on 2022/09/28.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("H3X0R NEWS")
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
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "안녕"),
//    Post(id: "3", title: "Hola")
//]
//
