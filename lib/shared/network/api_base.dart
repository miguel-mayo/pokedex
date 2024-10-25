import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;

const kTimeout = Duration(seconds: 20);
const kApiUrl = 'https://pokeapi.co/api/v2';

class NetworkException implements Exception {}

class BadRequestException implements Exception {}

class UnauthorisedException implements Exception {}

class NotFoundException implements Exception {}

class ServerException implements Exception {}

class InvalidCredentials implements Exception {
  InvalidCredentials(this.message);
  final String message;
}

class EmailAlreadyInUse implements Exception {
  EmailAlreadyInUse(this.message);
  final String message;
}

class APIBase {
  // Get request
  Future<dynamic> get({
    required String path,
    required Map<String, dynamic> query,
    String? token,
  }) async {
    try {
      log('Api Get request path $path');
      final response = await http
          .get(_queryBuilder(path, query), headers: _headerBuilder(token))
          .timeout(
            kTimeout,
            onTimeout: () => throw TimeoutException('Timeout'),
          );
      return _returnResponse(response);
    } on Exception catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  // Post request
  Future<dynamic> post({
    required String path,
    Map<String, dynamic>? body,
    String? bodyString,
    String? token,
  }) async {
    assert(
      !(body != null && bodyString != null),
      'Body and bodyString cannot be used at the same time',
    );
    try {
      log('Api Post request path $path');
      final response = await http
          .post(
            Uri.parse(kApiUrl + path),
            headers: _headerBuilder(token),
            body: body != null ? json.encode(body) : bodyString,
          )
          .timeout(
            kTimeout,
            onTimeout: () => throw TimeoutException('Timeout'),
          );
      return _returnResponse(response);
    } on Exception catch (e, s) {
      log(e.toString(), error: e, stackTrace: s);
      throw NetworkException();
    }
  }

  // Put request
  Future<dynamic> put({
    required String path,
    required String token,
    required Map<String, dynamic> body,
  }) async {
    try {
      log('Api Put request path $path');
      final response = await http
          .put(
            Uri.parse(kApiUrl + path),
            headers: _headerBuilder(token),
            body: json.encode(body),
          )
          .timeout(
            kTimeout,
            onTimeout: () => throw TimeoutException('Timeout'),
          );
      return _returnResponse(response);
    } on Exception catch (e) {
      log(e.toString());
      throw NetworkException();
    }
  }

  // PAtch request
  Future<dynamic> patch({
    required String path,
    required String token,
    required Map<String, dynamic> body,
  }) async {
    try {
      log('Api Patch request path $path');
      final response = await http
          .patch(
            Uri.parse(kApiUrl + path),
            headers: _headerBuilder(token),
            body: json.encode(body),
          )
          .timeout(
            kTimeout,
            onTimeout: () => throw TimeoutException('Timeout'),
          );
      return _returnResponse(response);
    } on Exception catch (e) {
      log(e.toString());
      throw NetworkException();
    }
  }

  // delete request
  Future<dynamic> delete({
    required String path,
    required String token,
  }) async {
    try {
      log('Api Delete request path $path');
      final response = await http
          .delete(
            Uri.parse(kApiUrl + path),
            headers: _headerBuilder(token),
          )
          .timeout(
            kTimeout,
            onTimeout: () => throw TimeoutException('Timeout'),
          );
      return _returnResponse(response);
    } on Exception catch (e) {
      log(e.toString());
      throw NetworkException();
    }
  }

  // Multipart request
  Future<dynamic> multipart({
    required String path,
    required String token,
    required String imgPath,
  }) async {
    try {
      log('Api Post request path $path');
      final request = http.MultipartRequest(
        'POST',
        Uri.parse(
          kApiUrl + path,
        ),
      );

      request.headers.addAll(_headerBuilderMultipart(token));

      request.files.add(
        http.MultipartFile(
          'image',
          File(imgPath).readAsBytes().asStream(),
          File(imgPath).lengthSync(),
          filename: 'avatar',
        ),
        // await http.MultipartFile.fromPath('image', imgPath),
      );

      final streamedResponse = await request.send().timeout(
            kTimeout,
            onTimeout: () => throw TimeoutException('Timeout'),
          );

      final response = await http.Response.fromStream(streamedResponse);
      return _returnResponse(response);
    } on Exception catch (e) {
      log(e.toString());
      throw NetworkException();
    }
  }

  // Normal header
  Map<String, String> _headerBuilder(String? token) {
    final headers = <String, String>{};
    headers[HttpHeaders.acceptHeader] = 'application/json; charset=utf-8';
    headers[HttpHeaders.contentTypeHeader] = 'application/json; charset=utf-8';

    if (token != null) {
      headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
    }

    return headers;
  }

  // Header multipart
  Map<String, String> _headerBuilderMultipart(String token) {
    final headers = <String, String>{};
    headers[HttpHeaders.acceptHeader] = 'application/json; charset=utf-8';
    headers[HttpHeaders.contentTypeHeader] = 'multipart/form-data';
    headers[HttpHeaders.authorizationHeader] = 'Bearer $token';

    return headers;
  }

  Uri _queryBuilder(String base, Map<String, dynamic> params) {
    final query = params.entries.map((entry) {
      final key = Uri.encodeComponent(entry.key);
      final value = entry.value is String
          ? Uri.encodeComponent(entry.value as String)
          : entry.value.toString();
      return '$key=$value';
    }).join('&');

    return query.isNotEmpty
        ? Uri.parse('$kApiUrl$base?$query')
        : Uri.parse('$kApiUrl$base');
  }

  dynamic _returnResponse(http.Response response) {
    dynamic responseJson;
    try {
      responseJson = json.decode(response.body);
    } catch (e) {
      responseJson = json.decode('{"results": "${response.body}"}');
    }

    /*final responseJson = !response.body.contains('{')
        ? json.decode('{"results": "${response.body}"}')
        : json.decode(utf8.decode(response.body.codeUnits));*/
    // log(responseJson);
    if (response.statusCode >= 200 && response.statusCode <= 299) {
      return responseJson;
    }
    log('Api response error with ${response.statusCode} + ${response.body}');
    switch (response.statusCode) {
      case 400:
        throw BadRequestException();
      case 401:
      case 403:
        throw UnauthorisedException();
      case 500:
      default:
        throw ServerException();
    }
  }

  /*dynamic _returnResponse(http.Response response) {
    log("RESPONSE !!!");
    log(response.body);
    final responseJson = json.decode(utf8.decode(response.body.codeUnits));
    if (response.statusCode >= 200 && response.statusCode <= 299) {
      return responseJson;
    }
    log('Api response error with ${response.statusCode} + ${response.body}');
    switch (response.statusCode) {
      case 400: throw BadRequestException();
      case 401:
      case 403: throw UnauthorisedException();
      case 500:
      default: throw ServerException();
    }
  }*/
}
