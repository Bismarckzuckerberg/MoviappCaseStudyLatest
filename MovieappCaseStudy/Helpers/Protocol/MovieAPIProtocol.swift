import Foundation

protocol MovieAPIProtocol {
    
    func getUpComingMovies(completion: @escaping (Result<MovieModel, GenericError>)-> ())
    func getNowPlayingMovies(completion: @escaping (Result<MovieModel, GenericError>)-> ())
    func getMovieDetail(movieId: Int, completion: @escaping (Result<MovieDetail, GenericError>)-> ())
}
