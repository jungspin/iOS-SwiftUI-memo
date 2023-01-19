//
//  Post.swift
//  SwiftUIMemo
//
//  Created by jungspin on 2023/01/19.
//

import Foundation

class Post: Identifiable, ObservableObject, Decodable {
    let userId: Int
    let id: Int
    var title: String
    var body: String
    
    init(userId:Int, id: Int, title: String, body: String) {
        self.userId = userId
        self.id = id
        self.title = title
        self.body = body
    }
}
