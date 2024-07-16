//
//  ProfileView.swift
//  instragram
//
//  Created by nhasan on 7/16/24.
//

import SwiftUI

struct ProfileView: View {
    private let gridItem : [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 10) {
                    HStack {
                        Image("profile")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        Spacer()
                        HStack (spacing: 8 ) {
                            UserStateView(value: 8, title: "posts")
                            UserStateView(value: 179, title: "follower")
                            UserStateView(value: 160, title: "following")
                        }
                        
                    }.padding(.horizontal).padding(.bottom)
                    
                    VStack (alignment: .leading, spacing: 4){
                        Text("Nha San")
                            .font(.footnote)
                        Text("You have to belive in yourselt when no one else does.[as me]")
                            .font(.footnote)
                    }
                    HStack {
                        Button {
                            
                        } label: {
                            Text("Edit Profile")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width:150, height: 32)
                                .foregroundColor(.black)
                                .overlay(RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.gray, lineWidth: 1))
                        }
                        Button {
                            
                        } label: {
                            Text("Share Profile")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width:150, height: 32)
                                .foregroundColor(.black)
                                .overlay(RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.gray, lineWidth: 1))
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "person.crop.circle.badge.plus")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width:50, height: 32)
                                .foregroundColor(.black)
                                .overlay(RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.gray, lineWidth: 1))
                        }
                    }
                    
                }
                LazyVGrid(columns: gridItem, spacing: 1) {
                    ForEach(0 ... 15, id: \.self ) { index in
                        Image("profile")
                            .resizable()
                            .scaledToFill()
                    }
                }
            }
            .navigationTitle("nhanever_lie")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
