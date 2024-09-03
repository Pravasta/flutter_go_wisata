import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_wisata/data/datasources/midtrans/midtrans_remote_datasource.dart';
import 'package:go_wisata/data/model/response/qris_response_model.dart';

part 'qris_event.dart';
part 'qris_state.dart';
part 'qris_bloc.freezed.dart';

class QrisBloc extends Bloc<QrisEvent, QrisState> {
  final MidtransRemoteDatasource _remoteDatasource;

  QrisBloc(this._remoteDatasource) : super(const _Initial()) {
    on<_GenerateQrCode>((event, emit) async {
      emit(const _Loading());
      try {
        final qrisResponse = await _remoteDatasource.generateQrCode(
            event.orderId, event.grossAmount);
        emit(_Loaded(qrisResponse));
      } catch (e) {
        emit(_Error(e.toString()));
      }
    });
  }
}
