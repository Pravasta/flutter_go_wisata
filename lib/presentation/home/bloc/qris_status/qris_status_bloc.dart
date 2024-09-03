import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_wisata/data/datasources/midtrans/midtrans_remote_datasource.dart';
import 'package:go_wisata/data/model/response/qris_status_response_model.dart';

part 'qris_status_event.dart';
part 'qris_status_state.dart';
part 'qris_status_bloc.freezed.dart';

class QrisStatusBloc extends Bloc<QrisStatusEvent, QrisStatusState> {
  final MidtransRemoteDatasource _remoteDatasource;

  QrisStatusBloc(this._remoteDatasource) : super(const _Initial()) {
    on<_CheckPaymentStatus>((event, emit) async {
      emit(const _Loading());
      try {
        final qrisStatusResponse =
            await _remoteDatasource.checkPaymentStatus(event.orderId);
        if (qrisStatusResponse.transactionStatus == 'settlement') {
          emit(const _Success('Payment Success'));
        } else if (qrisStatusResponse.transactionStatus == 'pending') {
          emit(const _Pending('Payment Pending'));
        }
      } catch (e) {
        emit(_Error(e.toString()));
      }
    });
  }
}
