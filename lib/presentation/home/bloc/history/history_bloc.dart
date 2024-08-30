import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_wisata/data/datasources/product/product_local_datasource.dart';
import 'package:go_wisata/presentation/home/bloc/checkout/models/order_model.dart';

part 'history_event.dart';
part 'history_state.dart';
part 'history_bloc.freezed.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  final ProductLocalDatasource _localDatasource;

  HistoryBloc(this._localDatasource) : super(const _Initial()) {
    on<HistoryEvent>((event, emit) async {
      emit(const _Loading());
      final histories = await _localDatasource.getAllOrder();
      emit(_Success(histories));
    });
  }
}
