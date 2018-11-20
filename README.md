# Date utility

A library for Dart developers.

The date util class is a dart package developed by Adetu Ridwan and Egbesola Anthony.

## fetaures
The class dateUtil contains the following method:
- yearLength
- day
- month
- daysInMonth
- daysPastInYear
- totalLengthOfDays
- printMonthCalendar
- getWeek
- leapYear

1. The yearLength method:
    The yearLength method has a single parameter of type integer and it calculates the number of days from the beginning of calendar to the entered year
    yearLength(int year);

2. The day method:
        The day method has a single parameter of type integer and it returns the string equivalent of given date day
        day(int length);

3. The month method:
       The month method has a single parameter of type integer and it returns the string equivalent of given month number
        month(int monthNum);

4. The daysInMonth method:
        The daysInMonth method has two parameters of type integer and it returns the total number of days in a month
        daysInMonth(int monthNum, int year);

5. The daysPastInYear method:
        This method has three parameters of type integer and it returns the total number of days past in a given year
        daysPastInYear(int monthNum, int dayNum, int year);

6. The totalLengthOfDays method:
        This method has three parameters of type integer and it returns the total number of days past since the beginning of the calendar year 0001
        totalLengthOfDays(int monthNum, int dayNum, int year);

7. The printMonthCalendar method;
        This method has two parameter of type integer and it prints the calendar of the given month in the given year.
        printMonthCalendar(int monthNum, int year);

8. The getWeek method:
        This method has three parameters of type integer and returns the weeks past in the year.
        getWeek(int monthNum, int dayNum, int year);

9. The leapYear method:
        This method has a single parameter of type integer also and returns a boolean value if the given year is a leap year
        leapYear(int year);


## Usage
Step 1: Simply create an instance of the class dateUtil.dart in your main() block
    var dateUtility = new DateUtil();

Step 2: Import the 'dart: io' api and request for user input on month number, day number and year.

                //Prompting for user input of the month number
                stdout.writeln("Enter month number");
                int monthNumber = int.parse(stdin.readLineSync());

                //Prompting for user input of the  day  number
                stdout.writeln("Enter day number");
                int dayNumber = int.parse(stdin.readLineSync());


                //Prompting for user input of the year
                stdout.writeln("Enter year ");
                int year = int.parse(stdin.readLineSync());
Note: When using the standard input stream, the returned data type is a String hence the parsing of the returned data to the required data type.

Step 3: Create a variable name of type integer to store the total number of days past since the beginning of the calendar year 0001

                //store the total number of days past since the beginning of the calendar year 0001
	        int length = dateUtility.totalLengthOfDays(monthNumber, dayNumber, year);

    The above line of code returns the total number of days past in a year plus the number of days from the beginning of calendar to the entered year

Step 4: Create a variable name of type String to store the result of the entered date day which calls the day() method for getting the string equivalent of the entered date day and thereby passing the variable name of step 3
                //store the string equivalent of entered date day
	        String resultDay = dateUtility.day(length);

Step 5: Create a variable name to store the string equivalent of the given Month number
                //store the string equivalent of entered month number
                String monthName = dateUtility.month(monthNumber);


Step 6: Printing the result.
                //Printing the details
                stdout.writeln("The Day $resultDay, the Month is $monthName and the year is $year");



Using the days past in a year method:
Step 1: Create a variable name to store the returned value of the day(s) past in a year method.
            //calculating total number of days past in a given year
            int daysPast = dateUtility.daysPastInYear(monthNumber, dayNumber, year);

Step 2: Printing the details
             //Printing out the result for days past in a given year
              stdout.writeln("Days past in the year is: $daysPast day(s)");


Using the weeks past in a year
Step 1: Create a variable name to store the returned value of the week(s) past in a year method.
        //calculating the week past in  the entered date in the year
          int weeks = dateUtility.getWeek(monthNumber, dayNumber, year);

Step 2: Printing the details
        //Printing the number of weeks past in a given year
        stdout.writeln("Week(s): $weeks week(s)");

Using the print month calendar:
        //Printing the calendar for the month in a given year
         dateUtility.printMonthCalendar(monthNumber, year);

using the leap year method to check if a year is a leap year
  //Checking if a year is a leap year
  stdout.writeln("Is $year a leap year? \n Answer: ${dateUtility.leapYear(year)}");