import 'package:dio/dio.dart';
import 'package:rick_and_morty_new/utils/RequestState.dart';
import 'package:rxdart/rxdart.dart';

Stream<RequestState<TDomain>> apiRequest<TResponse, TDomain>({
  required Future<Response> Function() request,
  required TResponse Function(Map<String, dynamic> json) fromJson,
  required TDomain Function(TResponse response) toDomain,
  required TDomain Function(TDomain domain)? copyWithSuccessMessage,
  String successMessage = 'Success',
}) {
  return Rx.defer(() async* {
    yield const RequestState.loading();

    try {
      final response = await request();

      if ((response.statusCode ?? 0) ~/ 100 == 2) {
        final json = response.data as Map<String, dynamic>;
        final parsedResponse = fromJson(json);
        final domain = toDomain(parsedResponse);

        final updatedDomain =
            copyWithSuccessMessage?.call(domain) ?? domain;

        yield RequestState.success(updatedDomain);
      } else {
        final json = response.data as Map<String, dynamic>;
        final errorMessage = json['error'] ?? 'Terjadi kesalahan';

        final parsedResponse = fromJson({'message': errorMessage, 'results': []});
        yield RequestState.error(toDomain(parsedResponse));
      }
    } catch (e) {
      String errorMessage = 'Terjadi kesalahan';

      if (e is DioException) {
        errorMessage = e.response?.data['error'] ??
            e.message ??
            'Terjadi kesalahan dari server';
      } else {
        errorMessage = e.toString();
      }

      final parsedResponse = fromJson({'message': errorMessage, 'results': []});
      yield RequestState.error(toDomain(parsedResponse));
    }
  });
}