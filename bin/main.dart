//? MOBILE APPLICATION PROGRAMMING
//? Exercise 1: Dart Programming Language

// Date: Tuesday, 9 November 2021
// Section: 2
// Member 1's Name: NURSYAFRINA BINTI AHMAD   Location: SEGAMAT, JOHOR (i.e. where are you currently located)
// Member 2's Name: NURAINA NAJWA BINTI MOHD RAUZI    Location: GOMBAK, SELANGOR

import 'courses.dart';

//! Task 1: Define the class 'Course'

class Course {
  String _code;
  String _name;

  String get code => _code;
  String get name => _name;
  set code(c) => _code = c; 
  set name(n) => _name = n; 

  String get c { 
  var creditHour = int.parse(_code.substring(8,9));
  return CREDITHOURS[creditHour - 1];
  }
   
  
  String get y {
    var year = int.parse(_code.substring(1,6)) + 2000;
    var yearOfStudy = DateTime.now().year - year;
    
   const YEARS = ['First', 'Second', 'Third', 'Fourth'];
   return YEARS[yearOfStudy - 1];
  }
}

//! Task 2: Define a function to print a list of courses
void printList() {
  print('Course Code\tCredit Hour\tYear Offered\tCourse Name');
  print('-----------\t-----------\t------------\t------------');
}


void main() {
  print(courses.length);

  //! Task 3a: Create a list of Course objects using a 'for' loop
  var lines = courses.length;
  var course=[];
  for(int i= 0; i<courses.length; i++){
    var line = lines[i];
    var fields = line.split(',');
    var _code = fields[0];
    var _name = fields[1];

    var c = Course(code: _code, name:_name);
    course.add(c);
  }

  //! Task 3b: Create a list of Course objects using a the 'forEach' high-order method.
  code.forEach((codee) => print(
    '${codee.code}\t${codee.}\t${codee.}\t${codee.}\t${codee.name}'));
  
  
  
  //! Task 3c: Create a list of Course objects using a the 'map' high-order method.
  var courses = lines.map((String line){
    var fields = line.split(',');
    return course(code: fields[0], name: fields[1]);

  }).toList();

  //! Task 4: Calculate the total credits of all courses use the 'fold' high-order method.
  print('\nNumber of courses=  \t Total credit hours= \n');

  var sum = totalCreditHour.fold(0, (currentSum, totalCreditHour) => currentSum + totalCreditHour);
  
  
  //! Task 5: Calculate the number of courses by year offered.

 /*int totalCreditHour = codes.fold(0, (int sum,codee) => sum +codee.totalCreditHour);
  totalCreditHour = (totalCreditHour / codes.length).round();*/
  var sum = 0;
  for (var i=0; i<courses.length; i++){
    sum = sum + courses[0];
  }
  print('Year Offered\tNumber of Courses');
  print('------------\t-----------------');
}

// Resources
// 1.	How do I parse a string into a number with Dart?
//    https://stackoverflow.com/questions/13167496/how-do-i-parse-a-string-into-a-number-with-dart

// 2.	Top 10 Array utility methods you should know (Dart)
//    https://codeburst.io/top-10-array-utility-methods-you-should-know-dart-feb2648ee3a2
