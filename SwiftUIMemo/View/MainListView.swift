//
//  MainListView.swift
//  SwiftUIMemo
//
//  Created by jungspin on 2023/01/18.
//

import SwiftUI

struct MainListView: View {
    @EnvironmentObject var store: MemoStore
    
    var body: some View {
        NavigationView {
            List(store.list) { memo in
                MemoCell(memo: memo)
            }
            .listStyle(.plain)
            .navigationTitle("My Memo") // .blar call as modifier
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        // preview에서 사용할 공유데이터로 따로 등록해야함
        MainListView()
            .environmentObject(MemoStore())
    }
}


