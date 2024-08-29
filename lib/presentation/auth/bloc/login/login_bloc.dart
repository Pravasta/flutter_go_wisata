import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:go_wisata/data/datasources/auth/auth_remote_datasource.dart';
import 'package:go_wisata/data/model/request/login_request_model.dart';
import 'package:go_wisata/data/model/response/auth_response_model.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRemoteDatasource _remoteDatasource;

  LoginBloc(
    this._remoteDatasource,
  ) : super(const _Initial()) {
    on<_Login>((event, emit) async {
      emit(const _Loading());
      final dataRequest = LoginRequestModel(
        email: event.email,
        password: event.password,
      );

      final response = await _remoteDatasource.login(dataRequest);

      response.fold(
        (error) => emit(_Error(error)),
        (data) => emit(_Success(data)),
      );
    });
  }
}
