// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
//  Create function with an argument that takes an integer
// Create variable that changes the integer we use into string. Then split the strings and reverse the split strings
// Create for loop and define a variable equal to 3; increment it by four
// Length of for set to of variable less than length of other variable
// Add comma after every three elements;
// Reverse and join the string together



// Initial Solution
function comma (number) {
  var flip = number.toString().split('').reverse();
  for (var i = 3; i < flip.length; i+= 4) {
    flip.splice(i,0,",");
  }

  (flip.reverse().join(""));
};




// Refactored Solution
function comma (number) {
  var flip = number.toString().split('');
  for (var i = 3; i < flip.length; i+= 4) {
    flip.splice(-i,0,",");
  }

  console.log(flip.join(""))
};




// Your Own Tests (OPTIONAL)
comma(543523452)


// Reflection
//-Approching this problem in JavaScript was a little different than in Ruby. I knew what methods I wanted to do in Ruby but I need to research the mehtods in JavaScript that were eqivilent to those methods.
//-I didn't really learn anyhting new about itterating over loops in JavaScript in this challenge, but I learned about the splice method, which really helped make this method eaiser to solve.
//-The difference was translating ruby methods into JavaScript or in one case finding a method in JavaScript that helps solve the problem with a method Ruby doesn't have.
//-Again, I found the Splice method to be pretty effective in solving this solution.

