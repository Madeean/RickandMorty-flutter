import 'package:freezed_annotation/freezed_annotation.dart';
part 'RequestState.freezed.dart';

@freezed
class RequestState<T> with _$RequestState<T> {
  const factory RequestState.idle() = Idle<T>;
  const factory RequestState.loading() = Loading<T>;
  const factory RequestState.success(T data) = Success<T>;
  const factory RequestState.error(String message) = ErrorState<T>;
}