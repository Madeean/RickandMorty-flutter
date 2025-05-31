import 'package:dio/dio.dart';
import 'package:rick_and_morty_new/utils/RequestState.dart';
import 'package:rxdart/rxdart.dart';

Stream<RequestState<TDomain>> apiRequest<TResponse, TDomain>({
  required Future<Response> Function() request,
  required TResponse Function(dynamic json) fromJson,
  required TDomain Function(TResponse response) toDomain,
  required TDomain Function(TDomain domain)? copyWithSuccessMessage,
  String successMessage = 'Success',
}) {
  return Rx.defer(() async* {
    yield const RequestState.loading();

    try {
      final response = await request();
      print("RESPONSE ${response.statusCode} ${response.data}");

      if ((response.statusCode ?? 0) ~/ 100 == 2) {
        final json = response.data;
        print("Masuk sini json $json");
        final parsedResponse = fromJson(json);
        print("Masuk sini parsedResponse $parsedResponse");
        final domain = toDomain(parsedResponse);
        print("Masuk sini domain $domain");

        final updatedDomain = copyWithSuccessMessage?.call(domain) ?? domain;
        yield RequestState.success(updatedDomain);
      } else {
        final json = response.data is Map<String, dynamic> ? response.data : {};
        final errorMessage = json['error']?.toString() ?? 'Terjadi kesalahan';
        final parsedResponse = fromJson({'message': errorMessage, 'results': []});
        yield RequestState.error(toDomain(parsedResponse));
      }
    } catch (e) {
      print("Error in apiRequest: $e");
      String errorMessage = 'Terjadi kesalahan';
      if (e is DioException) {
        final errorData = e.response?.data;
        errorMessage = errorData is Map<String, dynamic>
            ? errorData['error']?.toString() ?? e.message ??
            'Terjadi kesalahan dari server'
            : e.message ?? 'Terjadi kesalahan dari server';
      } else {
        errorMessage = e.toString();
      }

      final parsedResponse = fromJson({'message': errorMessage, 'results': []});
      yield RequestState.error(toDomain(parsedResponse));
    }
  });
}