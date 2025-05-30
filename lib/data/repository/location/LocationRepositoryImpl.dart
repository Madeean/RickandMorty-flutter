import 'package:rick_and_morty_new/data/network/Network.dart';
import 'package:rick_and_morty_new/data/repository/location/model/LocationResponse.dart';
import 'package:rick_and_morty_new/data/utils/ApiRequest.dart';
import 'package:rick_and_morty_new/domain/location/LocationRepository.dart';
import 'package:rick_and_morty_new/domain/location/model/LocationDomainModel.dart';
import 'package:rick_and_morty_new/utils/RequestState.dart';

class LocationRepositoryImpl implements LocationRepository {
  final Network network;

  LocationRepositoryImpl(this.network);

  @override
  Stream<RequestState<LocationDomainModel>> getAllLocation(
      String name, String type, String dimension, int page) {
    return apiRequest<LocationResponse, LocationDomainModel>(
      request: () => network.dio.get('/location', queryParameters: {
        'name': name,
        'type': type,
        'dimension': dimension,
        'page': page
      }),
      fromJson: (json) => LocationResponse.fromJson(json),
      toDomain: (res) => res.toDomain(),
      copyWithSuccessMessage: (domain) =>
          domain.copyWith(message: 'Success Get All Location'),
    );
  }
}
