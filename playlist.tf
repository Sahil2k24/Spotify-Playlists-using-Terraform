resource "spotify_playlist" "Bollywood-Songs" {
    name= "Geeky Playlist"
    tracks= ["3vVIhgkDoC0vRBba5drHPe"]
}

data "spotify_search_track" "my-songs" {
    artist= "Arijit Singh"
}

resource "spotify_playlist" "my-playlist" {
    name= "SAHIL's Playlist"
    tracks= [data.spotify_search_track.my-songs.tracks[1].id,
    data.spotify_search_track.my-songs.tracks[2].id,
    data.spotify_search_track.my-songs.tracks[3].id
    ]
}