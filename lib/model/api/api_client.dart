import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gql_dio_link/gql_dio_link.dart';
import 'package:graphql/client.dart';

class ApiResult<TData> {
  final TData? data;
  final String? error;

  ApiResult({this.data, this.error});
}

class GraphqlApiClient {
  late final GraphQLClient _client;
  GraphqlApiClient() {
    var dioLink = DioLink(dotenv.env["API_URL"]!, client: Dio());
    dioLink.client.options.headers = {"X-Parse-Application-Id": dotenv.env["API_ID"]!, "X-Parse-Client-Key": dotenv.env["API_KEY"]!};
    _client = GraphQLClient(link: dioLink, cache: GraphQLCache());
  }

  Future<ApiResult<TData>> mutate<TData>(MutationOptions<TData> options) async {
    final res = await _client.mutate<TData>(options);

    return ApiResult(data: _parseData(res.data, options.parserFn), error: _parseErrorMessage(res.exception));
  }

  Future<ApiResult<TData>> query<TData>(QueryOptions<TData> options) async {
    final res = await _client.query<TData>(options);
    return ApiResult(data: _parseData(res.data, options.parserFn), error: _parseErrorMessage(res.exception));
  }

  String? _parseErrorMessage(OperationException? exception) {
    if (exception == null) {
      return null;
    }
    if (exception.linkException != null) {
      return "Network Error: ${exception.linkException?.originalException.error}";
    }
    return exception.graphqlErrors.first.message;
  }

  TData? _parseData<TData>(Map<String, dynamic>? data, TData Function(Map<String, dynamic>) parseFn) {
    if (data == null) {
      return null;
    }

    return parseFn(data);
  }
}
