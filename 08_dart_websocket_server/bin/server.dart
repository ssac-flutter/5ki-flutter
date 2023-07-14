import 'dart:convert';
import 'dart:io';

void main(List<String> args) async {
  var server = await HttpServer.bind(InternetAddress.loopbackIPv4, 4040);
  print('Listening on localhost:${server.port}');

  List<WebSocket> rooms = [];

  await for (HttpRequest request in server) {
    if (request.uri.path == '/ws') {
      // Upgrade an HttpRequest to a WebSocket connection
      var socket = await WebSocketTransformer.upgrade(request);

      rooms.add(socket);

      print('Client connected!');
      // Listen for incoming messages from the client
      socket.listen((message) {
        print('Received message: $message');
        // socket.add(message);

        rooms.forEach((room) {
          room.add(message);
        });
      }, onDone: () {
        // 연결 끊김
        rooms.remove(socket);
      });

    } else {
      request.response.statusCode = HttpStatus.forbidden;
      request.response.close();
    }
  }
}
