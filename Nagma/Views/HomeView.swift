//
//  HomeView.swift
//  Nagma
//
//  Created by Shrirang Zend on 04/10/24.
//

import SwiftUI

struct HomeView: View {
    
    let playlists: [Playlist] = [
        Playlist(imageName: "The Band Violin", title: "Classic Hits", subtitle: "30 songs for an acoustic afternoon"),
        Playlist(imageName: "The Band Guitar", title: "Acoustic Evening", subtitle: "Relax and unwind"),
        Playlist(imageName: "The Band Drum", title: "Rock Anthems", subtitle: "Feel the beat"),
        Playlist(imageName: "The Band Trumpet", title: "Jazz Classics", subtitle: "Smooth and cool tunes"),
        Playlist(imageName: "The Band Speaker 1", title: "Pop Party", subtitle: "Get the party started"),
        // Add more as needed...
    ]
    
    let albums: [Album] = [
        Album(imageName: "Graduation", title: "Graduation", artistName: "Kanye West"),
        Album(imageName: "Tickets to my downfall", title: "Tickets to my Downfall", artistName: "Machine Gun Kelly"),
        Album(imageName: "Astroworld", title: "Astroworld", artistName: "Travis Scott"),
        Album(imageName: "goodbye and good riddance", title: "Goodbye and Good Riddance", artistName: "Juice WRLD"),
        Album(imageName: "Certified lover boy", title: "Certified Lover Boy", artistName: "Drake"),
        // Add more albums as needed...
    ]

    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Spacer()
                    // Greeting text
                    Text("Hi, User!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.horizontal, 20)
                    
                    // Search Bar (dummy representation)
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        TextField("Search music", text: $searchText)
                            .foregroundColor(.primary)
                            .padding(.vertical, 0)
                            .padding(.horizontal, 10)
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                            .frame(height: 18)
                        Spacer()
                    }
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 20)
                    
                    // Popular Section
                    Text("Popular")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.horizontal, 20)
                        .padding(.top, 20)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(playlists) { playlist in
                                PlaylistCardView(
                                    playlistImage: playlist.imageName,
                                    title: playlist.title,
                                    subtitle: playlist.subtitle
                                )
                            }
                        }
                        .padding(.horizontal, 20)
                    }
                    
                    // Top Albums Section (Can follow the same pattern)
                    Text("Top Albums")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.horizontal, 20)
                        .padding(.top, 20)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(albums) { album in
                                        PlaylistCardView(
                                            playlistImage: album.imageName,
                                            title: album.title,
                                            subtitle: album.artistName
                                        )
                                    }
                        }
                        .padding(.horizontal, 20)
                    }
                }
            }
            .navigationTitle("")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
