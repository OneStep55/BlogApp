//
//  PostCellView.swift
//  BlogApp
//
//  Created by Самат Танкеев on 09.07.2023.
//

import SwiftUI

struct PostCellView: View {
    var model: PostModel
   @State var isLiked = false
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .topTrailing) {
                Image(model.imageName)
                    .resizable()
                    .scaledToFit()
                Image(systemName: "heart.fill")
                    .font(.title)
                    .foregroundColor(isLiked ? .red : .gray)
                    .padding()
                    .onTapGesture {
                        withAnimation (
                            .easeInOut(
                                duration: 0.5)) {
                                isLiked.toggle()
                            }
                    }
            }
            
            
            VStack(alignment: .leading) {
                Text(model.title)
                    .font(.headline)
                HStack {
                    Text(model.autor)
                    Spacer()
                    Text(model.date)
                }
            }
            .padding()
            .foregroundColor(.primary)
        
        }
        .background()
        .clipShape(RoundedRectangle(cornerRadius: 20))
        
    }
}

struct PostCellView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            PostCellView(model: PostModel(imageName: "nature1", title: "Лучше места для отдыха", content: "", autor: "Autor", date: "09-06-2023"))
                .shadow(radius: 20)
                .padding()
            
            Spacer()
        }
    }
}
