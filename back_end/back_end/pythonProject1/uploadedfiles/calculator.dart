import 'dart:io';
void main() {
  var again;
  do{
  stdout.write("Please Enter Number1 : ");
  var number1=stdin.readLineSync();
  double num1=double.parse(number1!);
  stdout.write("Please Enter Number2 : ");
   var  number2=stdin.readLineSync();
  double num2=double.parse(number2!);
  // var again;
  // do{
   stdout.write('Enter Operation You Want + - * / % :  ');
   String ch;
   var char=stdin.readLineSync();
   switch(char){
     case '+':
       print('Summation Result = ${sum(num1, num2)}');
       break;
     case '-':
       print('Substraction Result = ${sub(num1, num2)}');
       break;
     case '/':
       print('division Result = ${div(num1, num2)}');
       break;
     case '*':
       print('Multiplication Result = ${mul(num1, num2)}');
       break;
     case '%':
       print('Reminder Result = ${reminder(num1, num2)}');
       break;
   }
  print("Type y to play again, anything else to stop: ");
  again = stdin.readLineSync();
} while(again=='y'||again=='Y');


}
double sum(num1,num2)
{
  return num1+num2;
}
double sub(num1,num2)
{
  return num1-num2;
}
double mul(num1,num2)
{
  return num1*num2;
}
double div(num1,num2)
{
  return num1/num2;
}
double reminder(num1,num2)
{
  return num1%num2;
}
