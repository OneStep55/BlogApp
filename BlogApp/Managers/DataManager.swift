//
//  DataManager.swift
//  BlogApp
//
//  Created by Самат Танкеев on 09.07.2023.
//

import Foundation

struct DataManger {
    
     static var posts : [PostModel] = [
        .init(id: 1, imageName: "nature1", title: "Места которые стоит посетить", content: content1, autor: "freeman", date: "23-06-2023"),
        .init(id: 2, imageName: "nature2", title: "Места с красивой природой", content: content2, autor: "alex07", date: "23-06-2023"),
        .init(id: 3, imageName: "nature3", title: "Поездка в Альпы", content: content3, autor: "seventeen", date: "23-06-2023"),
        .init(id: 4, imageName: "nature4", title: "Магия северного сияния в Лапландии", content: content4, autor: "seventeen", date: "23-06-2023"),
        .init(id: 5, imageName: "nature5", title: "Лучшие места для отдыха", content: content5, autor: "alex07", date: "22-05-2023"),
        
    ]
    
    static func getPosts() -> [PostModel] {
        return posts
    }
}
