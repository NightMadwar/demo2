import 'package:dio/dio.dart';

abstract class GetData {
  Dio dio = Dio();
  String BaseURL = "https://maher.alsakkaaminy.online/api/Products";
  dynamic dioGet();
  dynamic diofilter(String value);
}

class Get extends GetData {
  @override
  dioGet() async {
    try {
      Response response = await dio.get(BaseURL,
          options: Options(headers: {
            'content-type': 'application/json',
            'accept': 'application/json',
          }));
      if (response.statusCode == 200) {
        return response;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  diofilter(String value) async {
    try {
      final response = await dio.get(
        BaseURL + "/filter",
        queryParameters: {
          'partialDescription': value,
          'partialCategory': value,
        },
        options: Options(
          headers: {
            'content-type': 'application/json',
            'accept': 'application/json',
          },
        ),
      );
      print(response);
      return response;
    } catch (e) {
      // Handle errors appropriately
      print(e);
      throw e; // You might want to handle errors more gracefully in your actual app
    }
  }
}
