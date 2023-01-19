//
//  RequestAPI.swift
//  SwiftUIMemo
//
//  Created by jungspin on 2023/01/19.
//

import Foundation

class RequestAPI: ObservableObject {
    static let shared = RequestAPI()
    private init() {} // 외부에서 생성할 수 없도록
    @Published var posts: [Post] = []
    
    
    func fetchData() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {return}
        
        let session = URLSession(configuration: .default)
        
        let task = session.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                return
            }
            guard let resultData = data else {
                return
            }
            do {
                // decode<T>(_ type: T.Type, from data: Data) 변환할 타입...!!!!
                let apiResponse = try JSONDecoder().decode(Array<Post>.self, from: resultData)
                DispatchQueue.main.async {
                    self.posts = apiResponse
                }
            } catch(let err) {
                print(err.localizedDescription)
            }
        }
        task.resume()
    }
}
