//
//  FeedView.swift
//  instragram
//
//  Created by nhasan on 7/16/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 32) {
                    ForEach (0 ... 20, id: \.self) { post in
                        FeedCell()
                    }
                }
                .padding(.top, 8)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("instragram-text-logo")
                        .resizable()
                        .frame(width: 120, height: 50)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Image(systemName: "heart")
                            .imageScale(.large)
                        Image(systemName: "paperplane")
                            .imageScale(.large)
                    }
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
