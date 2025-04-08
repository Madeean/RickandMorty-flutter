import 'package:rickandmortyapp/domain/location/LocationRepository.dart';
import 'package:rickandmortyapp/domain/location/LocationUseCase.dart';
import 'package:rickandmortyapp/domain/location/model/LocationDomainModel.dart';
import 'package:rickandmortyapp/utils/RequestState.dart';

class LocationUseCaseImpl implements LocationUseCase {
  final LocationRepository repository;

  LocationUseCaseImpl(this.repository);

  @override
  Stream<RequestState<LocationDomainModel>> getAllLocation(String name, String type, String dimension, int page) {
    return repository.getAllLocation(name, type, dimension, page);
  }

}