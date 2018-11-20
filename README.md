# Date utility

A simple api with a complete set of date helper methods.

### features
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

### The `yearLength` method:
    The yearLength method has a single parameter of type integer and it calculates the number of days from the beginning of calendar to the entered year
```dart
    yearLength(int year);
```

### The `day` method:
        The day method has a single parameter of type integer and it returns the string equivalent of given date day
```dart 
        day(int length);
```
### The `month` method:
       The month method has a single parameter of type integer and it returns the string equivalent of given month number
```dart
        month(int monthNum);
```
### The `daysInMonth` method:
         The daysInMonth method has two parameters of type # # # #integer and it returns the total number of days in a month
```dart
        daysInMonth(int monthNum, int year);
```

### The `daysPastInYear` method:
        This method has three parameters of type integer and it returns the total number of days past in a given year
```dart
        daysPastInYear(int monthNum, int dayNum, int year);
```

### The `totalLengthOfDays` method:
        This method has three parameters of type integer and it returns the total number of days past since the beginning of the calendar year 0001
```dart       
        totalLengthOfDays(int monthNum, int dayNum, int year);
```

### The `printMonthCalendar` method;
        This method has two parameter of type integer and it prints the calendar of the given month in the given year.
```dart
        printMonthCalendar(int monthNum, int year);
```

### The `getWeek` method:
        This method has three parameters of type integer and returns the weeks past in the year.
```dart
        getWeek(int monthNum, int dayNum, int year);
```

### The `leapYear` method:
        This method has a single parameter of type integer also and returns a boolean value if the given year is a leap year
```dart
        leapYear(int year);
```

## Usage
# Simply create an instance of the class dateUtil.dart in your main() block
```dart
    var dateUtility = new DateUtil();
```
# Import the 'dart: io' api and request for user input on month number, day number and year.
   ```dart
                //Prompting for user input of the month number
                stdout.writeln("Enter month number");
                int monthNumber = int.parse(stdin.readLineSync());
```
Output:
> Enter Month Number
> 11

```dart
                //Prompting for user input of the  day  number
                stdout.writeln("Enter day number");
                int dayNumber = int.parse(stdin.readLineSync());
```
Output:
> Enter day number
> 12

```dart
                //Prompting for user input of the year
                stdout.writeln("Enter year ");
                int year = int.parse(stdin.readLineSync());
```    
Output:
> Enter year
> 1975
   
# Note: When using the standard input stream, the returned data type is a String hence the parsing of the returned data to the required data type.

# Create a variable name of type integer to store the total number of days past since the beginning of the calendar year 0001
 ```dart
                //store the total number of days past since the beginning of the calendar year 0001
	        int length = dateUtility.totalLengthOfDays(monthNumber, dayNumber, year);
```
#    The above line of code returns the total number of days past in a year plus the number of days from the beginning of calendar to the entered year

# Create a variable name of type String to store the result of the entered date day which calls the day() method for getting the string equivalent of the entered date day and thereby passing the variable name of step 3 
```dart
                //store the string equivalent of entered date day
	        String resultDay = dateUtility.day(length);
```
# Create a variable name to store the string equivalent of the given Month number
   ```dart
                //store the string equivalent of entered month number
                String monthName = dateUtility.month(monthNumber);
```

# Printing the result.
   ```dart
                //Printing the details
                stdout.writeln("The Day $resultDay, the Month is $monthName and the year is $year");
```
Output:
> The Day Wednesday, the Month is November and the year is 1975

### Using the days past in a year method:

# Create a variable name to store the returned value of the day(s) past in a year method.
   ```dart
            //calculating total number of days past in a given year
            int daysPast = dateUtility.daysPastInYear(monthNumber, dayNumber, year);
```
# Printing the details
   ```dart
             //Printing out the result for days past in a given year
              stdout.writeln("Days past in the year is: $daysPast day(s)");
```
Output:
> Days past in the year is: 316 day(s)

### Using the weeks past in a year
# Create a variable name to store the returned value of the week(s) past in a year method.
   ```dart
        //calculating the week past in  the entered date in the year
          int weeks = dateUtility.getWeek(monthNumber, dayNumber, year);
```
# Printing the details
```dart
        //Printing the number of weeks past in a given year
        stdout.writeln("Week(s): $weeks week(s)");
```
Output: 
> Week(s): 46  week(s)

### Using the print month calendar:
```dart
        //Printing the calendar for the month in a given year
         dateUtility.printMonthCalendar(monthNumber, year);
```
Output:
> Sun     Mon     Tue     Wed     Thur    Fri     Sat
>                                                1
> 2       3       4       5       6       7       8
> 9       10      11      12      13      14      15
> 16      17      18      19      20      21      22
> 23      24      25      26      27      28      29
> 30


### using the leap year method to check if a year is a leap year
```dart
  //Checking if a year is a leap year
  stdout.writeln("Is $year a leap year? \n Answer: ${dateUtility.leapYear(year)}");
```
Output:
> Is 1975 a leap year?
> Answer: false 
