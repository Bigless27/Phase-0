// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
//President in vote count needs a key value pair of "BOB" which is equal to three which is the number of votes talled for him
//Repeat the above for vicePresident, secretary, treasurer.
//for officers, we need to declare the winners for each position.

//Steps:
//-Take the key and value pairs for each position in the votes variable and assign it to each key in the voteCount variable.
//-use a for loop to itterate through each position and use a +=1 to add the votes for each key in the variable voteCount
//-to display the winners, iterate through the voteCount objects to grab president, vp, secrectary, treasurer properties
//- then go through 2nd iteration to grab number of votes
//- create conditional and set a var to 0
//    - where we iterate through votes, as iteration progresses the var is set to the highest number as it passes along
//tally who the winner is and then add that winner as a property of the specifed object in the variable officers

// __________________________________________
// Initial Solution

// for (var voters in votes){
//   voteCount.president[votes[voters].president]=0;
//   voteCount.vicePresident[votes[voters].vicePresident]=0;
//   voteCount.secretary[votes[voters].secretary]=0;
//   voteCount.treasurer[votes[voters].treasurer]=0;
// }

// for (var count in votes){
//   voteCount.president[votes[count].president]+=1;
//   voteCount.vicePresident[votes[count].vicePresident]+=1;
//   voteCount.secretary[votes[count].secretary]+=1;
//   voteCount.treasurer[votes[count].treasurer]+=1;
// }


// //display the winners in the officers variable

// var winner = null;
// var leader = 0;

// // first for loop takes office (e.g. president) in voteCount
// for(var property in voteCount){
//
// // 2nd for loop: value from key (will print out vote numbers)
//   for(var value in voteCount[property]){
//     (voteCount[property][value])
//     // grabs highest value as it passes along and sets leader to highest value and winner grabs the name
//     if (voteCount[property][value] > leader){
//       leader = voteCount[property][value]; // takes value(key) and returns it's contents (:value)
//       winner = value; // value, alone, is the name
//     };
//   };
//   officers[property] = winner;
// };

// __________________________________________
// Refactored Solution

for (var voters in votes){
  voteCount.president[votes[voters].president]=0;
  voteCount.vicePresident[votes[voters].vicePresident]=0;
  voteCount.secretary[votes[voters].secretary]=0;
  voteCount.treasurer[votes[voters].treasurer]=0;
}

for (var count in votes){
  voteCount.president[votes[count].president]+=1;
  voteCount.vicePresident[votes[count].vicePresident]+=1;
  voteCount.secretary[votes[count].secretary]+=1;
  voteCount.treasurer[votes[count].treasurer]+=1;
}


for(var property in voteCount){
// set variables inside first for loop, but outside second.  If outside it only compares largest value overall (Fred will repeat).
  var winner = null;
  var leader = 0;
  for(var value in voteCount[property]){
    (voteCount[property][value])
    if (voteCount[property][value] > leader){
      leader = voteCount[property][value];
      winner = value;
    };
  };
  officers[property] = winner;
};




// __________________________________________
// Reflection






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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)



