import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  final Uri url = Uri.parse('https://tripadvisor16.p.rapidapi.com/api/v1/flights/searchAirport');
  final Map<String, String> params = {'query': 'london'};
  final Map<String, String> headers = {
    'X-RapidAPI-Key': 'c49d7e267fmsh6fde30ee7d5509ep159deajsn2f7610b96bb3',
    'X-RapidAPI-Host': 'tripadvisor16.p.rapidapi.com',
  };

  try {
    final response = await http.get(url.replace(queryParameters: params), headers: headers);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print(data);
    } else {
      print('Request failed with status: ${response.statusCode}');
    }
  } catch (error) {
    print('Error: $error');
  }
}

void main() {
  fetchData();
}
