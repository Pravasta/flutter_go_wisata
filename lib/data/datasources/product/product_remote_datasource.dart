import 'package:dartz/dartz.dart';
import 'package:go_wisata/data/model/response/product_response_model.dart';
import 'package:http/http.dart' as http;

import '../../../core/constants/variables.dart';
import '../../model/request/create_ticket_request_model.dart';
import '../../model/response/create_ticket_response_model.dart';
import '../auth/auth_local_datasource.dart';

class ProductRemoteDatasource {
  Future<Either<String, ProductResponseModel>> getProducts() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
      Uri.parse('${Variable.baseUrl}/api/api-products'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${authData.token}',
      },
    );

    if (response.statusCode == 200) {
      return Right(ProductResponseModel.fromJson(response.body));
    } else {
      return Left(response.body);
    }
  }

  Future<Either<String, CreateTicketResponseModel>> createTicket(
      CreateTicketRequestModel model) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.post(
      Uri.parse('${Variable.baseUrl}/api/api-products'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${authData.token}',
      },
      body: model.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(CreateTicketResponseModel.fromJson(response.body));
    } else {
      return Left(response.body);
    }
  }

  Future<Either<String, CreateTicketResponseModel>> updateTicket(
      CreateTicketRequestModel requestModel, int id) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final Map<String, String> headers = {
      'Authorization': 'Bearer ${authData.token}',
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    };

    final response = await http.patch(
      Uri.parse('${Variable.baseUrl}/api/api-products/$id'),
      headers: headers,
      body: requestModel.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(CreateTicketResponseModel.fromJson(response.body));
    } else {
      return Left(response.body);
    }
  }

  Future<Either<String, String>> deleteTicket(int id) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final Map<String, String> headers = {
      'Authorization': 'Bearer ${authData.token}',
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    };

    final response = await http.delete(
      Uri.parse('${Variable.baseUrl}/api/api-products/$id'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return const Right('Success');
    } else {
      return Left(response.body);
    }
  }
}
