/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.


// var gradebook = {

// }

// gradebook["Joseph"] = {testScores: scores[0]};
// gradebook["Susan"] = {testScores: scores[1]};
// gradebook["William"]= {testScores: scores[2]};
// gradebook["Elizabeth"] = {testScores: scores[3]};

// gradebook.addScore = function add(name, score) {
//   gradebook[name].testScores.push(score);
// };


// gradebook.getAverage=function average(name){
//   return average(gradebook[name].testScores);
// };

// function average(scores){
//   var sum=0
//   for(var i=0;i<scores.length;i++){
//     sum +=scores[i];
//   }
//   var averages=sum/scores.length
//   return averages
// };



// __________________________________________
// Refactored Solution


var gradebook = {

  addScore: function add(name, score) {
  gradebook[name].testScores.push(score);
  },
  getAverage: function getAverage(name){
  return average(gradebook[name].testScores);
  },

}

gradebook["Joseph"] = {testScores: scores[0]};
gradebook["Susan"] = {testScores: scores[1]};
gradebook["William"]= {testScores: scores[2]};
gradebook["Elizabeth"] = {testScores: scores[3]};



function average(scores){
  var sum=0
  for(var i=0;i<scores.length;i++){
    sum +=scores[i];
  }
  var averages=sum/scores.length
  return averages
};






// __________________________________________
// Reflect
/*-What I learned about assigning function to objects in JavaScript is that it can do the work of a constructior function. Also, it looks a lot DRYER
*/
/*-A way I used to itterate over nested arrays in JavaScript is to use a double for loop. In the first for loop I would define a  variable and set it equal to array[i]. "i" is the variable I defined in my first for loop. My second for loop would itterate through that defined varaible so that it will be able to access the values in the nested array*/
/*There really werent any new methods that I learned, but learned a few new concepts like assigning a function to an object.*/










// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)