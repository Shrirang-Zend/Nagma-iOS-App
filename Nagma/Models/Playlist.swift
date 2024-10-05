//
//  Playlist.swift
//  Nagma
//
//  Created by Shrirang Zend on 04/10/24.
//

import Foundation

struct Playlist: Identifiable {
    var id = UUID()  // Generates a unique identifier for each playlist
    var imageName: String
    var title: String
    var subtitle: String
}
