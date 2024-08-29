import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:go_wisata/data/datasources/product/product_remote_datasource.dart';
import 'package:go_wisata/data/model/response/product_response_model.dart';

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRemoteDatasource _remoteDatasource;

  ProductBloc(
    this._remoteDatasource,
  ) : super(const _Initial()) {
    on<_GetProducts>((event, emit) async {
      emit(const _Loading());
      final response = await _remoteDatasource.getProducts();

      response.fold(
        (error) => emit(_Error(error)),
        (data) => emit(_Success(data.data ?? [])),
      );
    });
  }
}
