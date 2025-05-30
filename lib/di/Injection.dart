import 'package:get_it/get_it.dart';
import 'package:rick_and_morty_new/data/network/Network.dart';
import 'package:rick_and_morty_new/data/repository/character/CharacterRepositoryImpl.dart';
import 'package:rick_and_morty_new/data/repository/episode/EpisodeRepositoryImpl.dart';
import 'package:rick_and_morty_new/data/repository/location/LocationRepositoryImpl.dart';
import 'package:rick_and_morty_new/domain/character/CharacterRepository.dart';
import 'package:rick_and_morty_new/domain/character/CharacterUseCase.dart';
import 'package:rick_and_morty_new/domain/character/CharacterUseCaseImpl.dart';
import 'package:rick_and_morty_new/domain/episode/EpisodeRepository.dart';
import 'package:rick_and_morty_new/domain/episode/EpisodeUseCase.dart';
import 'package:rick_and_morty_new/domain/episode/EpisodeUseCaseImpl.dart';
import 'package:rick_and_morty_new/domain/location/LocationRepository.dart';
import 'package:rick_and_morty_new/domain/location/LocationUseCase.dart';
import 'package:rick_and_morty_new/domain/location/LocationUseCaseImpl.dart';

final sl = GetIt.instance;

void setupDI() {
  sl.registerLazySingleton(() => Network());

  // Repository
  sl.registerLazySingleton<EpisodeRepository>(
      () => EpisodeRepositoryImpl(sl()));
  sl.registerLazySingleton<CharacterRepository>(
      () => CharacterRepositoryImpl(sl()));
  sl.registerLazySingleton<LocationRepository>(
      () => LocationRepositoryImpl(sl()));

  // UseCase
  sl.registerLazySingleton<EpisodeUseCase>(
      () => EpisodeUseCaseImpl(sl<EpisodeRepository>()));
  sl.registerLazySingleton<CharacterUseCase>(
      () => CharacterUseCaseImpl(sl<CharacterRepository>()));
  sl.registerLazySingleton<LocationUseCase>(
      () => LocationUseCaseImpl(sl<LocationRepository>()));
}
