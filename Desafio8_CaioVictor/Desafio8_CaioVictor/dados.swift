//
//  dados.swift
//  Desafio8_CaioVictor
//
//  Created by Turma02-2 on 12/02/25.
//

import Foundation

struct Song : Identifiable{
    var id = UUID()
    var name: String
    var artist: String
    var capa: String
}

var arrayMusicas = [
    Song(name: "No More Tears", artist: "Ozzy Osbourne", capa: "https://upload.wikimedia.org/wikipedia/pt/5/52/NoMoreTears.jpg"),
    Song(name: "Eyes Without A Face", artist: "Billy Idol", capa: "https://www.udiscovermusic.com/wp-content/uploads/2024/04/billyidol-rebel-3000DPI300RGB1000212481-820x820.jpg"),
    Song(name: "The Kids Aren't Alright", artist: "The Offspring", capa: "https://i.scdn.co/image/ab67616d0000b273cbd2ee7dff77bfb2b5f0af52"),
    Song(name: "B.Y.O.B", artist: "System Of A Down", capa: "https://i.scdn.co/image/ab67616d0000b273c65f8d04502eeddbdd61fa71"),
    Song(name: "That Smell", artist: "Lynyrd Skynyrd", capa: "https://i.scdn.co/image/ab67616d0000b273e5b1510421017472d32de436"),
    Song(name: "Smoking Snakes", artist: "Sabaton", capa: "https://i.scdn.co/image/ab67616d00001e02735eecca68d3bb03e2e35a75"),
    Song(name: "Fairy Tale", artist: "Shaman", capa: "https://i.scdn.co/image/ab67616d0000b2730be199bbe7ae13e71afa2a5c"),
    Song(name: "Free Bird", artist: "Lynyrd Skynyrd", capa: "https://cdn-images.dzcdn.net/images/cover/64e01d54ee2590fa5d3c2d1e2a3e3725/1900x1900-000000-80-0-0.jpg"),
    Song(name: "Simple Man", artist: "Lynyrd Skynyrd", capa: "https://cdn-images.dzcdn.net/images/cover/64e01d54ee2590fa5d3c2d1e2a3e3725/1900x1900-000000-80-0-0.jpg"),
    Song(name: "Fade To Black", artist: "Metallica", capa: "https://i.scdn.co/image/ab67616d0000b2739ad3e9959f48d513886b8933")
    
]

var arraySugeridos = [
    Song(name: "Fear Of The Dark", artist: "Iron Maiden", capa: "https://upload.wikimedia.org/wikipedia/pt/6/64/Fear_of_the_dark_-_iron_maiden.jpg"),
    Song(name: "Beyond The Realms Of Death", artist: "Judas Priest", capa: "https://i.ytimg.com/vi/iTpK87Eqzbs/hqdefault.jpg"),
    Song(name: "Bird Of Paradise", artist: "Snowy White", capa: "https://i.scdn.co/image/ab67616d0000b273b32e9bf76791ab3006152a87"),
    Song(name: "Always Somewhere", artist: "Scorpions", capa: "https://i.scdn.co/image/ab67616d0000b273c9703979ebcc156cebd0e2c4"),
    Song(name: "The Clansman", artist: "Iron Maiden", capa: "https://i.scdn.co/image/ab67616d0000b2736805b0426a6ffe0647e5a85b")

]
