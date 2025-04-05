import 'package:rickandmortyapp/data/repository/episode/model/EpisodeResponse.dart';
import 'package:rickandmortyapp/domain/episode/EpisodeRepository.dart';
import 'package:rickandmortyapp/domain/episode/model/EpisodeDomainModel.dart';
import 'package:rickandmortyapp/utils/RequestState.dart';
import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';

class EpisodeRepositoryImpl implements EpisodeRepository {
  final Dio _dio;

  EpisodeRepositoryImpl(this._dio);

  @override
  Stream<RequestState<EpisodeDomainModel>> getAllEpisode(String name) {
    return Rx.defer(() async* {
      yield const RequestState.loading();

      try {
        final response = await _dio.get(
          '/episode',
          queryParameters: {'name': name},
        );

        if ((response.statusCode ?? 0) ~/ 100 == 2) {
          // ✅ SUCCESS RESPONSE
          final json = response.data as Map<String, dynamic>;
          final episodeResponse = EpisodeResponse.fromJson(json);

          // Isi message success secara manual atau default
          final domainModel = episodeResponse.toDomain().copyWith(
            message: 'Success Get All Episode',
          );

          yield RequestState.success(domainModel);
        } else {
          final json = response.data as Map<String, dynamic>;

          final errorMessage = json['error'] ?? 'Terjadi kesalahan';
          yield RequestState.success(
            EpisodeDomainModel(
              message: errorMessage,
              results: [],
            ),
          );
        }
      } catch (e) {
        String errorMessage = 'Terjadi kesalahan';

        if (e is DioException) {
          errorMessage = e.response?.data['error'] ??
              e.message ??
              'Terjadi kesalahan dari server';
        } else {
          errorMessage = e.toString();
        }

        yield RequestState.error(errorMessage);
      }
    });
  }
}