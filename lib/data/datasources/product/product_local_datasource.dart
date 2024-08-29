import 'package:sqflite/sqflite.dart';

class ProductLocalDatasource {
  static ProductLocalDatasource? _localDatasource;
  static Database? database;

  ProductLocalDatasource.internal() {
    _localDatasource = this;
  }

  factory ProductLocalDatasource() =>
      _localDatasource ?? ProductLocalDatasource.internal();

  final String tableProducts = 'products';
  final String tableOrders = 'orders';
  final String tableOrderItems = 'order_items';
  final String tableCategory = 'category';
}
