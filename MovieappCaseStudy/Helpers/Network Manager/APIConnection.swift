import Foundation

struct Domain {
    static let baseUrl: String = "https://api.themoviedb.org/3"
    static let apiKey: String = "80b43b82815576429ca60bf79c604496"
    static let imdbUrl: String = "https://imdb.com/title/"
    static let tmdbImageUrl: String = "https://image.tmdb.org/t/p/w500/"
}

// - MARK: Enpoint URL's

enum APIEndpoint: String {
    
    case getNowPlaying = "/movie/now_playing"
    case getUpComing = "/movie/upcoming"
    case getMovie = "/movie/{movie_id}"
    
    var name: String {
        return self.rawValue
    }
        
}

// Support Keys in GET, POST
struct GetPostKeys {
    
    var apiKey = "api_key"
    var movieId = "movie_id"
}
