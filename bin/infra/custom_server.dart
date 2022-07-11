import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

class CustomServer {

  Future<void> initialize(Handler handler) async {

    // Definindo as variáveis
    String address = 'localhost';
    int port = 8080;

    // Inicializando o servidor
    await shelf_io.serve(handler, address, port);
    print('Servidor inicializado -> http://$address:$port');

  }

}