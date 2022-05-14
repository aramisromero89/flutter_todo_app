import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gql_dio_link/gql_dio_link.dart';
import 'package:graphql/client.dart';

class GraphqlApiClient {
  late final GraphQLClient _client;
  GraphqlApiClient() {
    var dioLink = DioLink(dotenv.env["API_URL"]!, client: Dio());
    dioLink.client.options.headers = {"X-Parse-Application-Id": dotenv.env["API_ID"]!, "X-Parse-Client-Key": dotenv.env["API_KEY"]!};
    _client = GraphQLClient(link: dioLink, cache: GraphQLCache());
  }

  Future<TData> mutate<TData>(MutationOptions<TData> options) async {
    final res = await _client.mutate<TData>(options);
    _checkError(res.exception);
    return _parseData(res.data, options.parserFn)!;
  }

  Future<TData> query<TData>(QueryOptions<TData> options) async {
    final res = await _client.query<TData>(options);
    return _parseData(res.data, options.parserFn)!;
  }

  void _checkError(OperationException? exception) {
    if (exception == null) {
      return;
    }
    if (exception.linkException != null) {
      throw "Network Error";
    }
    throw exception.graphqlErrors.first.message;
  }

  TData? _parseData<TData>(Map<String, dynamic>? data, TData Function(Map<String, dynamic>) parseFn) {
    if (data == null) {
      return null;
    }

    return parseFn(data);
  }
}
