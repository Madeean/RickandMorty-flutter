import 'package:get_it/get_it.dart';
import 'package:rickandmortyapp/data/network/Network.dart';
import 'package:rickandmortyapp/data/repository/character/CharacterRepositoryImpl.dart';
import 'package:rickandmortyapp/data/repository/episode/EpisodeRepositoryImpl.dart';
import 'package:rickandmortyapp/domain/character/CharacterRepository.dart';
import 'package:rickandmortyapp/domain/character/CharacterUseCase.dart';
import 'package:rickandmortyapp/domain/character/CharacterUseCaseImpl.dart';
import 'package:rickandmortyapp/domain/episode/EpisodeRepository.dart';
import 'package:rickandmortyapp/domain/episode/EpisodeUseCase.dart';
import 'package:rickandmortyapp/domain/episode/EpisodeUseCaseImpl.dart';

final sl = GetIt.instance;

void setupDI() {
  sl.registerLazySingleton(() => Network());

  // Repository
  sl.registerLazySingleton<EpisodeRepository>(
      () => EpisodeRepositoryImpl(sl()));
  sl.registerLazySingleton<CharacterRepository>(
      () => CharacterRepositoryImpl(sl()));

  // UseCase
  sl.registerLazySingleton<EpisodeUseCase>(
      () => EpisodeUseCaseImpl(sl<EpisodeRepository>()));
  sl.registerLazySingleton<CharacterUseCase>(
      () => CharacterUseCaseImpl(sl<CharacterRepository>()));
}
