//
//  PostDetailview.swift
//  SwiftUIMemo
//
//  Created by jungspin on 2023/01/19.
//

import SwiftUI

struct PostCell: View {
    @ObservedObject var post: Post
    
    
    var body: some View {
        VStack(alignment: .leading) {
            //TODO: 간격 넓히기
            Text("\(post.title)").font(.title3).fontWeight(.bold)
            Text("\(post.userId)")
        }
    }
}

struct PostDetailview_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PostCell(post: Post(userId: 1, id: 1, title: "title", body: "body"))
        }
    }
}
