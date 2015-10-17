//Calculate a grade

//Pseudocode
//-Write a funciton that takes an array of test sores. Then calculate the average of the test scores.
//-Next use if statements to compare that average grade to different conditions.
//-Whatever condition return true for the average score then we will display  a letter grade associated with that score.
//-Define a function that compares the average to an array and displays a letter grade.
//-The function will take three parameters the value and the min a max of the range.






//Initial Solution

// function Grade(array){
//   var sum=0
//   for(i=0,x=array.length;i < x;i++){
//     sum=sum +array[i];}
// var average = sum/array.length
//  if(compare(average,90,100)===true){
//   return "A"}
//  else if(compare(average,80,90)===true){
//   return "B"}
//  else if(compare(average,70,80)===true){
//   return "C"}
//  else if(compare(average,60,70)===true){
//   return "D"}
//  else{
//   return "F"
//  };
// };

// };

// // function compare(x,y,z){
// //     return x >= y && x <= z;
// // };

// console.log(Grade([100,50,100]))

//Refactored Solution



function Grade(array){
//use the reducte function to sum up elements and return
//previous value plus current value
 var sum=array.reduce(function(a,b) {return a+b});
 //Calculate average
 average=sum / array.length;
 average;

 if(compare(average,90,100)===true){
  return "A"}
 else if(compare(average,80,90)===true){
  return "B"}
 else if(compare(average,70,80)===true){
  return "C"}
 else if(compare(average,60,70)===true){
  return "D"}
 else{
  return "F"
 };
};

function compare(x,y,z){
    return x >= y && x <= z;
};

// //Driver Code

// console.log(Grade([0,0,0]))



//Reflection
//-Concepts I solidified druring this challenge was checking if a number was within a range
//and how to use the reduce function as another way to sum up variables in an array.
/*-The most difficult part of this challenge was realizing that the best way to compare a number to a range was to self define a function in JavaScrit, this was because there isn't an easy iteration like in Ruby to do this.*/
/*-I solved this problem in sort of a new way. I used a function within a function to solve this. The mehtodology was the same however.
*/
/*My pseudo code was a little diffenet because I had to design a comparison function.*/