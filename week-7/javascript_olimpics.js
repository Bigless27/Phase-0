 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up




// Bulk Up
var person = [{name:"John",event:"Skiing"}, {name:"Ryan", event:"Basketball"},{name:"Miguel",event:"Baseball"}];

var win=function(person){
    for (var i in person){
      person[i].win= true;
    }
    for (var x in person){
      if (person[x].win===true){
        console.log(person[x].name+" won the "+person[x].event+" event!")
      }
    }
};

win(person)




// Jumble your words
var words = " !sdrow ruoy elbmuJ"
function reverse(words){
 return (words.split("").reverse().join(""));
};

console.log(reverse(words))




// 2,4,6,8
var numbers = [1,3,3,3,5,5,6,7,8];
var newArray = [];

function evens(numbers){
  for (var x in numbers){
    if (numbers[x] % 2 === 0){
      newArray.push(numbers[x]);
    }
  }
  return newArray;
};

console.log(evens(numbers))




// "We built this city"
var Athlete = function(name, age, sport, quote){
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
};

//Driver code
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")

console.log(michaelPhelps.constructor === Athlete)

console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection
//-I learned how to add properties to objects in JavaScript. Also, I learned how to access those properties in the objects.
//-Constructor function are functions that let you set up stuff, like definine a variable or a function before the specific objects are created
//-At a glance a constructor seems pretty similar to a class in ruby.A constructor object has its properties and methods defined witht he keyword this in front of it.