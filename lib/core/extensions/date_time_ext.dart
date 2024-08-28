const List<String> _dayNames = [
  'Minggu',
  'Senin',
  'Selasa',
  'Rabu',
  'Kamis',
  'Jumat',
  'Sabtu'
];

const List<String> _monthNames = [
  'Januari',
  'Februari',
  'Maret',
  'April',
  'Mei',
  'Juni',
  'Juli',
  'Agustus',
  'September',
  'Oktober',
  'November',
  'Desember'
];

extension DateTimeExt on DateTime {
  String toFormattedDayTime() {
    String dayName = _dayNames[weekday - 1];
    return '$dayName, ${toFormattedTime()}';
  }

  String toFormattedDate() {
    return '$day.$month.$year';
  }

  String toFormattedMonth() {
    return _monthNames[month - 1];
  }

  String toFormattedTime() {
    String hour = this.hour.toString().padLeft(2, '0');
    String minute = this.minute.toString().padLeft(2, '0');
    return '$hour:$minute WIB';
  }
}
