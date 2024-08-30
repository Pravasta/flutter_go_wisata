import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_wisata/data/datasources/product/product_local_datasource.dart';

import 'package:go_wisata/data/datasources/product/product_remote_datasource.dart';
import 'package:go_wisata/data/model/response/product_response_model.dart';

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRemoteDatasource _remoteDatasource;
  final ProductLocalDatasource _localDatasource;

  ProductBloc(
    this._remoteDatasource,
    this._localDatasource,
  ) : super(const _Initial()) {
    List<Product> products = [];

    on<_GetProducts>((event, emit) async {
      emit(const _Loading());
      final response = await _remoteDatasource.getProducts();

      response.fold(
        (error) => emit(_Error(error)),
        (data) => emit(_Success(data.data ?? [])),
      );
    });
    on<_SyncProduct>((event, emit) async {
      final List<ConnectivityResult> connectivityResult =
          await (Connectivity().checkConnectivity());

      if (connectivityResult.contains(ConnectivityResult.none)) {
        emit(const _Error('No Internet Connection'));
      } else {
        emit(const _Loading());
        final response = await _remoteDatasource.getProducts();
        _localDatasource.removeAllProduct();
        _localDatasource.insertAllProduct(
            response.getOrElse(() => ProductResponseModel(data: [])).data ??
                []);
        products =
            response.getOrElse(() => ProductResponseModel(data: [])).data ?? [];
        emit(_Success(products));
      }
    });

    on<_GetLocalProducts>((event, emit) async {
      emit(const _Loading());
      final localProduct = await _localDatasource.getAllProduct();
      products = localProduct;
      emit(_Success(products));
    });
  }
}
