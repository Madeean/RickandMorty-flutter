import 'package:rick_and_morty_new/domain/location/model/LocationDomainModel.dart';
import 'package:rick_and_morty_new/utils/RequestState.dart';

abstract class LocationRepository {
  Stream<RequestState<LocationDomainModel>> getAllLocation(String name, String type, String dimension, int page);
}