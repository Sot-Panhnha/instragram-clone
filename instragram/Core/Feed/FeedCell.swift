//
//  FeedCell.swift
//  instragram
//
//  Created by nhasan on 7/16/24.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Image("profile")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Text("nhanever_lie")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Spacer()
                Button {
                    print("pressed on ellipsis")
                } label: {
                    Image(systemName: "ellipsis")
                        .imageScale(.large)
                        .foregroundColor(.black)
                }
            }.padding(.leading, 8)
            Image("profile")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            HStack {
                Button {
                    print("pressed on like")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                Button {
                    print("pressed on comment")
                } label: {
                    Image(systemName: "message")
                        .imageScale(.large)
                }
                Button {
                    print("pressed on share")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                Spacer()
                Button {
                    print("pressed on share")
                } label: {
                    Image(systemName: "bookmark")
                        .imageScale(.large)
                }
                
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundColor(.black)
            
            Text("200 likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding(.leading, 8)
                .padding(.top, 4)
            HStack {
                Text("nhanever_lie")
                    .fontWeight(.semibold)
                + Text(" ")
                + Text("juii hg mer ei")
            }
            .font(.footnote)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .padding(.leading, 10)
            Text("April 30")
                .font(.footnote)
                .fontWeight(.regular)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding(.top, 1)
                .padding(.leading, 10)
                .foregroundColor(.gray)
                           
        }
    }
}

#Preview {
    FeedCell()
}
