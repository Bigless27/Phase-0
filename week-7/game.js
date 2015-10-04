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
//-on every 5th space someone lands on have a chance method
//-use a RNG to see how far each player travles on the board.
//-if forward-backward=30 then that player has one
//
//

// Initial Code

//instructions
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
  game()
};

//winner
if (sonic.winner=== true){
  console.log("Sonic is the winner!!!! Great job!!!")
}
else if (shadow.winner===true){
  console.log("Shadow won....The world is now shrouded in Darkness for an eternity..........")
}





// Refactored Code






// Reflection
//
//
//
//
//
//
//
//