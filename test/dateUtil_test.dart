import 'dart:io';
import 'package:date_util/date_util.dart';

main() {
  final dateUtility = DateUtil();

  // Prompting for user input of the month number
  stdout.writeln('Enter month number');
  int monthNumber = int.parse(stdin.readLineSync());

  // Prompting for user input of the  day  number
  stdout.writeln('Enter day number');
  int dayNumber = int.parse(stdin.readLineSync());

  // Prompting for user input of the year
  stdout.writeln('Enter year ');
  int year = int.parse(stdin.readLineSync());

  // store the total number of days past since the beginning of the calendar year 0001
  int length = dateUtility.totalLengthOfDays(monthNumber, dayNumber, year);

  // store the string equivalent of entered date day
  String resultDay = dateUtility.day(length);

  // store the string equivalent of entered month number
  String monthName = dateUtility.month(monthNumber);

  // Printing the details
  stdout.writeln('The Day $resultDay, the Month is $monthName and the year is $year');

  // calculating total number of days past in a given year
  int daysPast = dateUtility.daysPastInYear(monthNumber, dayNumber, year);

  // Printing the result for days past in a given year
  stdout.writeln('Days past in the year is: $daysPast day(s)');

  // calculating the weeks past in the entered date in the year
  int weeks = dateUtility.getWeek(monthNumber, dayNumber, year);

  // Printing the number of weeks past in a given year
  stdout.writeln('Week(s): $weeks  week(s)');

  // Printing the calendar for the month in a given year
  dateUtility.printMonthCalendar(monthNumber, year);

  // Checking if a year is a leap year
  stdout.writeln('Is $year a leap year? \nAnswer: ${dateUtility.leapYear(year)}');
}
