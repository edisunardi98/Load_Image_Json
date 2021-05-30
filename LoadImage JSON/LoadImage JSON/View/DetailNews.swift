//
//  DetailNews.swift
//  LoadImage JSON
//
//  Created by Edi Sunardi on 21/04/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct DetailNews: View {
    
    let news: News
    
    var body: some View {
        
        ScrollView{
            VStack(alignment: .leading){
                WebImage(url: URL(string: news.image))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipped()
                VStack(alignment: .leading, spacing: 20){
                    Text("Republika.co.id")
                        .font(.caption)
                    Text("Friska Yolandha")
                        .font(.caption)
                    Text("2021-04-21T04:19:20Z")
                        .font(.caption)
                    Text(news.title)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text(news.content)
                        .font(.body)
                }.padding()
            }
        }
        
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailNews_Previews: PreviewProvider {
    static var previews: some View {
        DetailNews(news: News(title: "", description: "", image: "", content: ""))
    }
}
