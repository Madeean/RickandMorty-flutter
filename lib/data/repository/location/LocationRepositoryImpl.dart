import 'package:rickandmortyapp/data/network/Network.dart';
import 'package:rickandmortyapp/data/repository/location/model/LocationResponse.dart';
import 'package:rickandmortyapp/data/utils/ApiRequest.dart';
import 'package:rickandmortyapp/domain/location/LocationRepository.dart';
import 'package:rickandmortyapp/domain/location/model/LocationDomainModel.dart';
import 'package:rickandmortyapp/utils/RequestState.dart';

class LocationRepositoryImpl implements LocationRepository {
  final Network network;

  LocationRepositoryImpl(this.network);

  @override
  Stream<RequestState<LocationDomainModel>> getAllLocation(
      String name, String type, String dimension) {
    return apiRequest<LocationResponse, LocationDomainModel>(
      request: () => network.dio.get('/location', queryParameters: {
        'name': name,
        'type': type,
        'dimension': dimension,
      }),
      fromJson: (json) => LocationResponse.fromJson(json),
      toDomain: (res) => res.toDomain(),
      copyWithSuccessMessage: (domain) =>
          domain.copyWith(message: 'Success Get All Location'),
    );
  }
}
