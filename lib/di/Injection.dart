import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:rickandmortyapp/data/repository/episode/EpisodeRepositoryImpl.dart';
import 'package:rickandmortyapp/domain/episode/EpisodeRepository.dart';
import 'package:rickandmortyapp/domain/episode/EpisodeUseCase.dart';
import 'package:rickandmortyapp/domain/episode/EpisodeUseCaseImpl.dart';

final sl = GetIt.instance;

void setupDI() {

  sl.registerLazySingleton(() => Dio(BaseOptions(baseUrl: 'https://rickandmortyapi.com/api/')));

  // Repository
  sl.registerLazySingleton<EpisodeRepository>(() => EpisodeRepositoryImpl(sl()));

  // UseCase
  sl.registerLazySingleton<EpisodeUseCase>(
      () => EpisodeUseCaseImpl(sl<EpisodeRepository>()));
}
