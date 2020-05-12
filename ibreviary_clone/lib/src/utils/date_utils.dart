class _DateUtils {
  final _currentDate = DateTime.now();
  String getDay() {
    Map<String, String> months = {
      '1': 'Lunes',
      '2': 'Martes',
      '3': 'Miércoles',
      '4': 'Jueves',
      '5': 'Viernes',
      '6': 'Sábado',
      '7': 'Domingo'
    };

    String weekDay = _currentDate.weekday.toString();
    return months[weekDay];
  }
}

var dateUtils = _DateUtils();