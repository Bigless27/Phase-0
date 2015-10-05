 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: to win the race to the end before the computer
// Goals:Beat the other opponent to the end of the race
// Characters: Sonic, Shadow
// Objects:forward, backward
// Functions:move forward or backward or move at a special position

// Pseudocode
//-Define two characters as sonic and shadow.
//-Give sonic and shadow two properties of moving forward and backward.
//-make sure you account for going negative with an if statement
//-create a board with thirty spaces
//-on every space someone lands on that is a multiple of 7 and 15 theat player will move backa set number of spaces
//-use a RNG to see how far each player travles on the board.
//-Whoever is the first player to travel 100 spaces wins the race.
//
//-You are Sonic and the computer is Shadow. You each roll a 0 sided dice to see how far you will move. First player to travel 100 spaces wins!

// Initial Code

//instructions
// console.log("Welcome to the Pyrimid Cave race against Shadow!")
//   console.log("Can You beat shadow to the finish line?")
//   console.log("")
//   console.log("")


// function game(){

//   var move_sonic=Math.floor((Math.random() * 10) + 1);
//   var move_shadow=Math.floor((Math.random() * 10) + 1);
//   //adds movement


//   sonic.forward+=move_sonic
//   shadow.forward+=move_shadow

// //Check for traps, and define egg variable with global scope
// egg=0

// backtrack(sonic.forward,shadow.forward)

// //Back track checking
// if (egg==="Sonic"){sonic.forward-=5}
// else if (egg==="Shadow"){shadow.forward-=5}
// else if (egg==="Bio"){sonic.forward-=15}
// else if (egg==="Master"){shadow.forward-=15}



// //display where everyone is at
// console.log("Sonic is at space:"+" "+sonic.forward);
// console.log("Shadow is at space:"+" "+shadow.forward);
// console.log("The Goal Ring is at 100 spaces!!!")
// console.log(" ")



// //check to change a value to winner
//   if(sonic.forward> 100){
//     return sonic.winner=true}
//   else if(shadow.forward >100){
//     return shadow.winner=true}

// };

// function backtrack(sonic,shadow){


//     if (sonic % 7===0){
//       console.log("Dr. Egg man's Egg Vulkan halted Sonic's movement go back 5 spaces")
//       console.log(" ")
//       console.log(" ")

//       return  egg="Sonic"}

//     else if (shadow %7===0){
//       console.log("Miles Tailes Prower slowed down Shadow, go back 5 spaces.")
//       console.log(" ")
//       console.log(" ")
//       return  egg="Shadow"}

//     else if (sonic% 15==0){
//       console.log("Oh No! The BioLizard is directing the\ space coloney ark straight for earth!")
//       console.log("Sonic moves back 15 spaces!!")
//       console.log(" ")
//       console.log(" ")
//       return egg="Bio"
//     }

//     else if (shadow% 15 ==0){
//       console.log("Yes!Knuckles has collected all the pieces of the master emerald")
//       console.log("Shadow moves back 15 spaces!!")
//       console.log(" ")
//       console.log(" ")
//       return egg="Master"
//     }

//   };



// var sonic= {
//   forward:0,
//   winner:false,
// };
// var shadow={
//   forward:0,
//   winner:false,
// };


// //The game loop
// while (sonic.winner===false && shadow.winner=== false){
//   game()
// };

// //winner
// if (sonic.winner=== true){
//   console.log("Sonic is the winner!!!! Great job!!!")
// }
// else if (shadow.winner===true){
//   console.log("Shadow won....The world is now shrouded in Darkness for an eternity..........")
// }





// Refactored Code
console.log("Welcome to the Pyrimid Cave race against Shadow!")
  console.log("Can You beat shadow to the finish line?")
  console.log("")
  console.log("")


function game(){

  var move_sonic=Math.floor((Math.random() * 10) + 1);
  var move_shadow=Math.floor((Math.random() * 10) + 1);
  //adds movement


  sonic.forward+=move_sonic
  shadow.forward+=move_shadow

//Check for traps, and define egg variable with global scope
egg=0

backtrack(sonic.forward,shadow.forward)

//Back track checking
//I didn't put lines 157-161 into a function becasue I felt that it wouldn't help this code become more DRY.
if (egg==="Sonic"){sonic.forward-=5}
else if (egg==="Shadow"){shadow.forward-=5}
else if (egg==="Bio"){sonic.forward-=15}
else if (egg==="Master"){shadow.forward-=15}



//display where everyone is at
console.log("Sonic is at space:"+" "+sonic.forward);
console.log("Shadow is at space:"+" "+shadow.forward);
console.log("The Goal Ring is at 100 spaces!!!")
console.log(" ")



//check to change a value to winner
  if(sonic.forward> 100){
    return sonic.winner=true}
  else if(shadow.forward >100){
    return shadow.winner=true}

};

function backtrack(sonic,shadow){


    if (sonic % 7===0){
      console.log("Dr. Egg man's Egg Vulkan halted Sonic's movement go back 5 spaces")
      console.log(" ")
      console.log(" ")

      return  egg="Sonic"}

    else if (shadow %7===0){
      console.log("Miles Tailes Prower slowed down Shadow, go back 5 spaces.")
      console.log(" ")
      console.log(" ")
      return  egg="Shadow"}

    else if (sonic% 15==0){
      console.log("Oh No! The BioLizard is directing the\ space coloney ark straight for earth!")
      console.log("Sonic moves back 15 spaces!!")
      console.log(" ")
      console.log(" ")
      return egg="Bio"
    }

    else if (shadow% 15 ==0){
      console.log("Yes!Knuckles has collected all the pieces of the master emerald")
      console.log("Shadow moves back 15 spaces!!")
      console.log(" ")
      console.log(" ")
      return egg="Master"
    }

  };



var sonic= {
  forward:0,
  winner:false,
};
var shadow={
  forward:0,
  winner:false,
};


//The game loop
while (sonic.winner===false && shadow.winner=== false){
  var r=confirm("Click OK to roll the dice");
  if (r== true) {
    game()
  }
  else{
  console.log("Press OK to play the game silly")}
};

//winner
if (sonic.winner=== true){
  console.log("Sonic is the winner!!!! Great job!!!")
}
else if (shadow.winner===true){
  console.log("Shadow won....The world is now shrouded in Darkness for an eternity..........")
}





// Reflection
//-The most difficult part of this challenge was variable scope. A lot of times I had problems with the scope and I was trying to access varaiable that were out of the scope which lead to problems.
//-What I learned about creating objects and functions that interact with one another is that you are able to call on a funciton in JavaScript before you actually define that function
//-What I learned in my refactored solution was how to use the confirm method in JavaScript to use the users input to run this game like an actual computer game.
//-you can manipulate properties in an object by adding properties, deleting propeties and changing the values of properties. This is done through dot notation, which makes it easy to access and manipulate the objects/properties you intend to.
//
//
//
//
//
//
//