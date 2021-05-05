# Date utility

A simple dart API with a complete set of date helper methods not available in the DateTime API hence,production is made easier when working with dates.

# features
## The class dateUtil contains the following method:
- yearLength
- day
- month
- daysInMonth
- daysPastInYear
- totalLengthOfDays
- printMonthCalendar
- getWeek
- leapYear

 The `yearLength` method:
    The yearLength method has a single parameter of type DateTime and it calculates the number of days from the beginning of calendar to the entered year
```dart
yearLength(DateTime time);
```

 The `day` method:
        The day method has a single parameter of type integer and it returns the string equivalent of given date day
```dart
day(int length);
```
 The `month` method:
       The month method has a single parameter of type DateTime and it returns the string equivalent of given month number
```dart
month(DateTime time);
```
 The `daysInMonth` method:
         The daysInMonth method has a single parameter of type DateTime and it returns the total number of days in a month
```dart
daysInMonth(DateTime time);
```

 The `daysPastInYear` method:
        This method has a single parameter of type DateTime and it returns the total number of days past in a given year
```dart
daysPastInYear(DateTime time);
```

 The `totalLengthOfDays` method:
        This method has a single parameter of type DateTime and it returns the total number of days past since the beginning of the calendar year 0001
```dart
totalLengthOfDays(DateTime time);
```

 The `printMonthCalendar` method;
        This method has a single parameter of type DateTime and it prints the calendar of the given month in the given year.
```dart
printMonthCalendar(DateTime time);
```

 The `getWeek` method:
        This method has a single parameters of type DateTime and returns the weeks past in the year.
```dart
getWeek(DateTime time);
```

 The `leapYear` method:
        This method has a single parameter of type DateTime time also and returns a boolean value if the given year is a leap year
```dart
leapYear(DateTime time);
```

# Usage
 This Class contains mainly static methods, since it acts as an extension to DateTime, therefore you don't have to always create a DateUtil object, except if you want to use a non-static method. Example of DateUtil Object: 
```dart
final DateUtil dateUtility = DateUtil();
```
 Import the core library , since most of the Methods require a DateTime parameter.
```dart
import 'dart:io';
```
Usage of non-static Methods:

```dart
// Checking if 1025 is a Leap Year!
if ( DateUtil.leapYear(new DateTime(1025))){
        stdout.writeln('Year 1025 is a leap Year!');
}else{
        stdout.writeln('Year 1025 is not a leap Year!');
}
```
Output:
> Year 1025 is not a leap Year!

Usage of non-static methods:

```dart
// Printing this month Calendar!
final DateUtil dateUtility = DateUtil();
dateUtility.printMonthCalendar(DateTime.now()); // current Month: May 2021!
```
Output:
> Sun     Mon     Tue     Wed     Thur    Fri     Sat
>                                                 1  
> 2       3       4       5       6       7       8
> 9       10      11      12      13      14      15
> 16      17      18      19      20      21      22
> 23      24      25      26      27      28      29
> 30      31

