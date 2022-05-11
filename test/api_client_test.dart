import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_todo_app/model/api/api_client.dart';
import 'package:flutter_todo_app/model/api/graphql/operations/signin.graphql.dart';

void main() {
  test('Graphql Api Client Test', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: ".env");

    final client = GraphqlApiClient();
    var res = await client.mutate<MutationsignIn>(OptionsMutationsignIn(variables: VariablesMutationsignIn(username: "aaaaaaa", password: "bbbbbbbbb")));
    expect(res.data, isNull);
    expect(res.error, isNotNull);
  });
}
