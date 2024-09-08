import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_wisata/data/datasources/product/product_local_datasource.dart';

import 'package:go_wisata/data/datasources/product/product_remote_datasource.dart';
import 'package:go_wisata/data/model/response/product_response_model.dart';

import '../../../../data/model/request/create_ticket_request_model.dart';

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

    on<_CreateTicket>((event, emit) async {
      emit(const _Loading());

      final requestData = CreateTicketRequestModel(
        name: event.model.name,
        price: event.model.price,
        stock: event.model.stock,
        categoryId: event.model.categoryId,
        criteria: event.model.criteria!.toLowerCase(),
      );

      final response = await _remoteDatasource.createTicket(requestData);

      response.fold(
        (error) => emit(_Error(error)),
        (data) {
          products.add(data.data);
          emit(_Success(products));
        },
      );
    });

    on<_UpdateTicket>((event, emit) async {
      emit(const _Loading());

      final requestData = CreateTicketRequestModel(
        name: event.model.name,
        price: event.model.price,
        stock: event.model.stock,
      );

      final response =
          await _remoteDatasource.updateTicket(requestData, event.model.id!);

      response.fold(
        (l) => emit(_Error(l)),
        (r) {
          final updatedProducts = products.map((product) {
            if (product.id == event.model.id) {
              return r.data;
            }
            return product;
          }).toList();

          products = updatedProducts; // Perbarui daftar lokal

          emit(_Success(
              updatedProducts)); // Kirim status berhasil dengan daftar produk yang diperbarui
        },
      );
    });

    on<_DeleteTicket>((event, emit) async {
      emit(const _Loading());

      final response = await _remoteDatasource.deleteTicket(event.id);
      response.fold(
        (l) => emit(_Error(l)),
        (r) {
          products.removeWhere((product) => product.id == event.id);
          emit(_Success(products));
        },
      );
    });
  }
}
