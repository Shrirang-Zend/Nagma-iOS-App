//
//  PlaylistCardView.swift
//  Nagma
//
//  Created by Shrirang Zend on 04/10/24.
//

import SwiftUI

struct PlaylistCardView: View {
    var playlistImage: String
    var title: String
    var subtitle: String

    var body: some View {
        VStack(alignment: .leading) {
            Image(playlistImage)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .cornerRadius(10)
            
            Text(title)
                .font(.headline)
                .fontWeight(.bold)
                .lineLimit(1)
                .padding(.top, 5)

            Text(subtitle)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .lineLimit(1)
        }
        .frame(width: 150)
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

struct PlaylistCardView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistCardView(playlistImage: "exampleImage", title: "Classic Hits", subtitle: "30 songs for an acoustic afternoon")
    }
}
