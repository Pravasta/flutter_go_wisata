import 'package:dartz/dartz.dart';
import 'package:go_wisata/core/constants/variables.dart';
import 'package:go_wisata/data/datasources/auth/auth_local_datasource.dart';
import 'package:go_wisata/data/model/request/login_request_model.dart';
import 'package:go_wisata/data/model/response/auth_response_model.dart';
import 'package:http/http.dart' as http;

class AuthRemoteDatasource {
  Future<Either<String, AuthResponseModel>> login(
      LoginRequestModel data) async {
    final response = await http.post(
      Uri.parse('${Variable.baseUrl}/api/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
      body: data.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(AuthResponseModel.fromJson(response.body));
    } else {
      return Left(response.body);
    }
  }

  Future<Either<String, String>> logout() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.post(
      Uri.parse('${Variable.baseUrl}/api/logout'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${authData.token}',
      },
    );

    if (response.statusCode == 200) {
      return const Right('Logout Success');
    } else {
      return Left(response.body);
    }
  }
}
