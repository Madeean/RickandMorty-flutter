import 'package:rickandmortyapp/domain/location/model/LocationDomainModel.dart';
import 'package:rickandmortyapp/utils/RequestState.dart';

abstract class LocationRepository {
  Stream<RequestState<LocationDomainModel>> getAllLocation(String name, String type, String dimension);
}