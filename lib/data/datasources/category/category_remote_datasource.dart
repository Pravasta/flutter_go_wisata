import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../core/constants/variables.dart';
import '../../model/response/category_response_model.dart';
import '../auth/auth_local_datasource.dart';

class CategoryRemoteDatasource {
  Future<Either<String, CategoryResponseModel>> getCategories() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
      Uri.parse('${Variable.baseUrl}/api/api-categories'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${authData.token}',
      },
    );

    if (response.statusCode == 200) {
      return Right(CategoryResponseModel.fromJson(response.body));
    } else {
      return Left(response.body);
    }
  }
}
