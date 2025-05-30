import 'package:rick_and_morty_new/domain/location/LocationRepository.dart';
import 'package:rick_and_morty_new/domain/location/LocationUseCase.dart';
import 'package:rick_and_morty_new/domain/location/model/LocationDomainModel.dart';
import 'package:rick_and_morty_new/utils/RequestState.dart';

class LocationUseCaseImpl implements LocationUseCase {
  final LocationRepository repository;

  LocationUseCaseImpl(this.repository);

  @override
  Stream<RequestState<LocationDomainModel>> getAllLocation(String name, String type, String dimension, int page) {
    return repository.getAllLocation(name, type, dimension, page);
  }

}