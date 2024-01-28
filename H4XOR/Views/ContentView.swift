//
//  ContentView.swift
//  H4XOR
//
//  Created by 周祥鹏 on 2024/1/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationStack {
            if networkManager.posts.count != 0 {
                List(networkManager.posts) { post in
                    
                    NavigationLink {
                        DetailView(url: post.url)
                    } label: {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    }

                    
                   
                }
                .navigationTitle("H4XOR NEWS")
            } else {
                
            }
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    
    }
}

#Preview {
    ContentView()
}
