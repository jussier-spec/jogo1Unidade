

import 'package:agents/data/network/entity/agent_http_paged_result.dart';
import 'package:agents/domain/agent.dart';
import 'package:dio/dio.dart';

import '../../../domain/exception/network_exception.dart';

class ApiAgents {
  late final Dio _dio;

  ApiAgents({required String baseUrl}) {
    _dio = Dio()
      ..options.baseUrl = baseUrl
      //..options.headers
      ..interceptors.add(
       LogInterceptor(
          requestBody: true,
          responseBody: true,
       ),
     );
  }

  Future<List<Agent>> getAgent({int? page, int? limit}) async {
    final     response = await _dio.get(
      "/agents",
      queryParameters: {
        '_page': page,
        '_per_page': limit,
      },
    );
    if (response.statusCode != null && response.statusCode! >= 400) {
      throw NetworkException(
        statusCode: response.statusCode!,
        message: response.statusMessage,
      );
    } else if (response.statusCode != null) {
      final AgentHttpPagedResult receivedData = AgentHttpPagedResult.fromJson(response.data as Map<String, dynamic>);

      return receivedData.data;
    } else {
      throw Exception('Unknown error');
    }
  }
  


  Future<List<Agent>> getAgentById({required int id}) async {
    final     response = await _dio.get(
      "/agents/$id",
    );
    if (response.statusCode != null && response.statusCode! >= 400) {
      throw NetworkException(
        statusCode: response.statusCode!,
        message: response.statusMessage,
      );
    } else if (response.statusCode != null) {
      final AgentHttpPagedResult receivedData = AgentHttpPagedResult.fromJson(response.data as Map<String, dynamic>);

      return receivedData.data;
    } else {
      throw Exception('Unknown error');
    }
  }
}
