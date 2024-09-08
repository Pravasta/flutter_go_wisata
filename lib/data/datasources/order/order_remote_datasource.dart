import 'package:go_wisata/core/constants/variables.dart';
import 'package:http/http.dart' as http;

import '../../model/request/order_request_model.dart';
import '../auth/auth_local_datasource.dart';

class OrderRemoteDatasource {
  Future<bool> sendOrder(OrderRequestModel requestModel) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${authData.token}',
      'Content-Type': 'application/json'
    };
    print(requestModel.toJson());
    final response = await http.post(
      Uri.parse('${Variable.baseUrl}/api/api-orders'),
      body: requestModel.toJson(),
      headers: headers,
    );

    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }
}
