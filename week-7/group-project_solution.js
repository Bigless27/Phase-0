// Group_Project

// Person #1
// As a user, I want to have 3 different operations:
// 1. Calculate the sum of arbitrary amount of numbers
// 2. Calculate the mean of arbitrary amount of numbers
// 3. Calculate the median of arbitrary amount of numbers

// Person #2
// 1. Set a VAR SUM that is equal to zero.
// Create a function that takes an array containing an arbitrary amount of numbers as it's argument
// Using the FOR loop, iterate through the array that was passed as an argument.
//     Add each element in the array to VAR SUM and save the result as VAR SUM.
// End the For loop.
// RETURN VAR SUM
// End the function


// 2. Create a function that takes an array containing an arbitrary amount of numbers as it's argument
// Set VAR MEAN equal to the quotient of VAR SUM divided by the length of the argument array.
// RETURN VAR MEAN
// End Function


// 3. Create a function that takes an array containing an arbitrary amount of numbers as it's argument
// SORT array into ascending order.
// Create an IF/ELSE Statement that accepts the condition of the length of the array
//    IF array length is an odd number, set VAR X equal to the quotient of the array length divided by 2 *****(only change I made: person 3) - .5. Set and RETURN VAR MEDIAN equal to the array element found at index position VAR X.
//    ELSE IF array length is an even number, set VAR X equal to the quotient of the array length divided by 2. Set and RETURN VAR MEDIAN equal to the quotient of (array element found at index position VAR X plus array element found at index position VAR X - 1) divided by two.
//    ELSE RETURN "please enter an array of integers"
// End IF/ELSE statement
// End Function

// Person #3 - Note from Person #2, I am really sorry, I am simply awful at pseudocode. Please email Raleo3@gmail.com with any questions.

// Sum function
var sum = 0
function combine(numbers){
  for (var i in numbers){
    sum=numbers[i] +sum
  };
  return sum
};


//Mean Function
function mean(numbers){
  var mean= combine(numbers);
  return mean/ numbers.length;

};


//Median Function
function median(numbers){

  var sorter= numbers.sort(function (a,b){return a-b});
  if (sorter.length %2===1){
    var x= (sorter.length/2)-0.5;
    return sorter[x];}
  else if(sorter.length % 2 ===0)
    {var x=sorter.length/2;
    return (sorter[x] +sorter[x-1])/2}
  else
    return "Please enter an array of integers";

};

console.log(median([3,4,2,1,6,8,9,10,11]))


// Look at what I did on line 57. The sort() method in JavaScript sorts elements alphbetically. This is how you need to change your sort method to sort numerically.







// Person #4