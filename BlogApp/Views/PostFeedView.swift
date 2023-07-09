//
//  PostFeedView.swift
//  BlogApp
//
//  Created by Самат Танкеев on 09.07.2023.
//

import SwiftUI

struct PostFeedView: View {
    var posts: [PostModel]
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(posts, id: \.id) { post in
                        NavigationLink {
                            SinglePostView(model: post)
                                
                        } label: {
                            PostCellView(model: post)
                                .padding()
                                .shadow(radius: 20)
                        }
                    }
                }
               
            }
            .navigationTitle("Travel time")
        }
    }
}

struct PostFeedView_Previews: PreviewProvider {
    static var previews: some View {
        PostFeedView(posts: DataManger.getPosts())
    }
}




