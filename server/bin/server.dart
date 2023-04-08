import 'dart:io';

import 'package:protos/protos.dart';
import 'package:server/todo_service.dart';

Future<void> main(List<String> arguments) async {
  final server = Server([
    TodoService(),
  ]);
  final port = int.parse(Platform.environment["PORT"]?? '8080');
  await server.serve(port:port);

  print("server port ${server.port}");
}
