//
//  File.swift
//  Nagma
//
//  Created by Shrirang Zend on 04/10/24.
//

import Foundation

struct Album: Identifiable {
    var id = UUID()  // Generates a unique identifier for each album
    var imageName: String  // The name of the image asset representing the album cover
    var title: String  // The album's title
    var artistName: String  // The artist who created the album
    var releaseYear: String?  // Optional: The year the album was released
    var genre: String?  // Optional: The genre of the album
}
