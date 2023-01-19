//
//  PostListView.swift
//  SwiftUIMemo
//
//  Created by jungspin on 2023/01/19.
//

import SwiftUI

struct PostListView: View {

    @StateObject private var network = RequestAPI.shared
    
    var body: some View {
        NavigationView {
            List {
                ForEach(network.posts) { result in
                    PostCell(post: result)
                }
            }
            .navigationTitle("Posts")
        }
        .onAppear {
            network.fetchData()
        }
    }
}

struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        PostListView()
    }
}
