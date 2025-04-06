import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rickandmortyapp/domain/location/model/LocationDomainModel.dart';
import 'package:rickandmortyapp/utils/RequestState.dart';

part 'LocationState.freezed.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    @Default(RequestState.idle()) RequestState<LocationDomainModel> location,
  }) = _LocationState;
}