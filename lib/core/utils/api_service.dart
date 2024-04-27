import 'package:dio/dio.dart';

class ApiService{
  final _baseUri='https://www.googleapis.com/books/v1/';
 final Dio dio;
  ApiService(this.dio);

  Future<Map<String,dynamic>> get({required String endPoints})
 async {
    var response=await dio.get('$_baseUri$endPoints');
    return response.data;

  }

}