import 'package:http/http.dart' as http;
import 'package:image_dataapi/types/imageapi.dart';

void main (List<String> arguments) async {
  var url = Uri.https('jsonplaceholder.typicode.com','/photos');

  try {
    var jsonImage = await http.get(url);
    if (jsonImage.statusCode == 200) {
       final imageapi = imageapiFromJson(jsonImage.body);
       for (var images in imageapi) {
         print("ID Album: ${images.albumId}");
         print("ID: ${images.id}");
         print("Titulo: ${images.title}");
         print("Url: ${images.url}");
         print("Url Compacta: ${images.thumbnailUrl}");
         print('===========================================');
       }
    } else {
      print("Sin conexion al servidor");
    }
  } catch (e) {
    print(e.toString());
  }
}