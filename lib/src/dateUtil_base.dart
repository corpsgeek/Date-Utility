// Copyright (c) 2018, Adetu Ridwan and Egbesola Anthony.
import 'dart:io';
import 'dart:core';

/// A date utility interface to get every information of dates, months, weeks and year taking leap
/// year into consideration.
class DateUtil {
  var dayOfWeek = 0;

  // Return the number of day passed since [time] DateTime variable
  static int yearLength(DateTime time) {
    var yearLength = 0;
    for (int counter = 1; counter < time.year; counter++) {
      if (counter >= 4) {
        if (leapYear(new DateTime(counter)))
          yearLength += 366;
        else
          yearLength += 365;
      } else
        yearLength += 365;
    }
    return yearLength;
  }

  String day(int length) {
    final day = <String>[
      'Saturday',
      'Sunday',
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday'
    ];

    var count = 0;
    String resultDay;

    for (var counter = 1; counter <= length; counter++) {
      final check = ((counter > 639798) && (counter < 639811));
      if (check == true) {
      } else {
        if (count >= 7) {
          if (count % 7 == 0) count = 0;
        }
        resultDay = day[count];
        count++;
      }
    }
    if (count == 1)
      dayOfWeek = 7;
    else
      dayOfWeek = (count - 1);
    return resultDay;
  }

  String month(final int monthNum) {
    final month = <String>[
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];
    return month[monthNum - 1];
  }

  static int daysInMonth(DateTime time) {
    List<int> monthLength = List(12);

    monthLength[0] = 31;
    monthLength[2] = 31;
    monthLength[4] = 31;
    monthLength[6] = 31;
    monthLength[7] = 31;
    monthLength[9] = 31;
    monthLength[11] = 31;
    monthLength[3] = 30;
    monthLength[8] = 30;
    monthLength[5] = 30;
    monthLength[10] = 30;

    if (leapYear(time) == true)
      monthLength[1] = 29;
    else
      monthLength[1] = 28;

    return monthLength[time.month - 1];
  }

  static int daysPastInYear(DateTime time) {
    var totalMonthLength = 0;

    for (var count = 1; count < time.month; count++) {
      totalMonthLength += daysInMonth(new DateTime(time.year, count));
    }

    var monthLengthTotal = totalMonthLength + time.day;

    return monthLengthTotal;
  }

  static totalLengthOfDays(DateTime time) =>
      daysPastInYear(time) + yearLength(time);

  void printMonthCalendar(DateTime time) {
    int dayNum = 1;
    final str_Day = <String>['Sun', 'Mon', 'Tue', 'Wed', 'Thur', 'Fri', 'Sat'];
    day(daysPastInYear(new DateTime(time.year, time.month, 1)) +
        yearLength(time));
    int dayDays = 1;

    for (int i = 0; i < 7; i++) {
      stdout.write('${str_Day[i]}\t');
    }
    stdout.writeln();

    for (int i = 1; i <= 6; i++) {
      for (int j = 1; j <= 7; j++) {
        if (dayNum >= dayOfWeek) {
          if (dayDays <= daysInMonth(time)) {
            stdout.write('${dayDays}\t');
          }
          ++dayDays;
        } else if (dayNum < dayOfWeek) stdout.write('\t');

        dayNum++;
      }
      stdout.writeln();
    }
  }

  static int getWeek(DateTime time) {
    double a = (daysPastInYear(time) / 7) + 1;
    return a.toInt();
  }

  static bool leapYear(DateTime time) {
    bool leapYear = false;

    bool leap = ((time.year % 100 == 0) && (time.year % 400 != 0));
    if (leap == true)
      leapYear = false;
    else if (time.year % 4 == 0) leapYear = true;

    return leapYear;
  }
}
