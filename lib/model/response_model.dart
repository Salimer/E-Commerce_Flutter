import 'dart:convert';

import 'package:http/http.dart';

class ResponseModel {
  final bool success;
  final dynamic data;
  final String? error;
  final int statusCode;

  const ResponseModel(
      {required this.success, required this.statusCode, this.data, this.error});

  factory ResponseModel.fromResponse(Response response) {
    final body = jsonDecode(response.body);

    return ResponseModel(
        success: response.statusCode == 200,
        statusCode: response.statusCode,
        data: body,
        error: 'error');
  }
}
