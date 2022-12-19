import '../../core/data_state.dart';
import '../../data/models/responses/get_popular_movie_list_response.dart';

abstract class IMovieRepository {
  Future<DataState<GetPopularMovieListResponse>> getPopularMovieList(
    String apiKey,
    String language,
    String region,
  );
}
