class HistoryModel {
  final String name;
  final int price;
  final DateTime dateTime;

  HistoryModel({
    required this.name,
    required this.price,
    required this.dateTime,
  });
}

List<HistoryModel> histories = [
  HistoryModel(
    name: 'Penjualan',
    price: 100000,
    dateTime: DateTime(2024, 5, 1, 3, 32),
  ),
  HistoryModel(
    name: 'Penjualan',
    price: 120000,
    dateTime: DateTime(2024, 5, 3, 5, 34),
  ),
  HistoryModel(
    name: 'Penjualan',
    price: 90000,
    dateTime: DateTime(2024, 4, 28, 15, 57),
  ),
];
