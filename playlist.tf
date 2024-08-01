resource "spotify_playlist" "Bollywood-Songs" {
    name= "SAHIL's Playlist"
    tracks= ["3vVIhgkDoC0vRBba5drHPe"]
}

data "spotify_search_track" "my-songs" {
    artist= "Arijit Singh"
}