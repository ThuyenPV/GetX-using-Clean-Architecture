import 'package:get/get.dart';

import '../sample.model.dart';

class SampleProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Sample.fromJson(map);
      if (map is List) return map.map((item) => Sample.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Sample?> getSample(int id) async {
    final response = await get('sample/$id');
    return response.body;
  }

  Future<Response<Sample>> postSample(Sample sample) async =>
      await post('sample', sample);
  Future<Response> deleteSample(int id) async => await delete('sample/$id');
}
