//
//  BlogAppApp.swift
//  BlogApp
//
//  Created by Самат Танкеев on 09.07.2023.
//

import SwiftUI

@main
struct BlogAppApp: App {
    var body: some Scene {
        WindowGroup {
            PostFeedView(posts: DataManger.getPosts())
        }
    }
}
