//
//  UserStateView.swift
//  instragram
//
//  Created by nhasan on 7/16/24.
//

import SwiftUI

struct UserStateView: View {
    let value : Int
    let title : String
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            Text(title)
                .font(.footnote)
        }.frame(width: 76)
    }
}

#Preview {
    UserStateView(value: 19, title: "posts")
}
