// chapter 2//

var ryan="hello"
console.log(ryan);

var food=prompt("What is your favorite food?")
console.log("Hey!,That's my favorite too!");

//triangles//
for (var hashes = "#"; hashes.length <8; hashes += "#")
  console.log(hashes);

//fizzbuzz
for (var fizzbuzz=0; fizzbuzz < 101; fizzbuzz ++){
  var output = "";
  if (fizzbuzz % 3 == 0)
    output += "Fizz";
  if (fizzbuzz % 5 == 0)
    output += "Buzz";
  console.log(output || fizzbuzz);
}

//Chapter 3
//Minimum
function minimum(x,y){
  if (x<y)
    return x;
  else
    return y;
};

console.log(minimum(20,25))

// Chapter 4
var me= [{name:"Ryan"},{food: ["Protien-Shake","Protein-Shake","Protein-Shake"]},{quirk: "I like to play basketball"}]

console.log(me)



var test=[2,3,4]
for (i in test){
  console.log(test[i])
};