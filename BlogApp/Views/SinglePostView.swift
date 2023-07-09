//
//  SinglePostFile.swift
//  BlogApp
//
//  Created by Самат Танкеев on 09.07.2023.
//

import SwiftUI

struct SinglePostView: View {
    var model: PostModel
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
              
                Image(model.imageName)
                    .resizable()
                    .scaledToFit()
                
                Text(model.title)
                    .font(.title2)
                    .bold()
                    .padding(3)

                    
                Text(model.content)
                        .padding(3)
                        .multilineTextAlignment(.leading)
                
            }
            
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct SinglePostView_Previews: PreviewProvider {
    static var previews: some View {
        SinglePostView(model: PostModel(id: 1, imageName: "nature1", title: "Места которые стоит посетить", content: caption, autor: "richy", date: "23-06-2023"))
    }
}

let caption = "Добро пожаловать в наш блог о природе Сегодня мы хотели бы поделиться с вами впечатлениями о загадочных горных вершинах и таинственных озерах, которые привлекают множество путешественников. Горные вершины восхищают своей величественной красотой. Восхождение на вершину горы предлагает неповторимые панорамные виды, где горы теряются в облаках, а зеленые луга и леса создают картины удивительной красоты. Озера, окруженные горами, привлекают своей таинственностью и спокойствием. Их чистая и прозрачная вода приглашает вас погрузиться в ее объятия. Прогулки по берегу озера позволяют насладиться прекрасными отражениями гор в его зеркальной поверхности."
