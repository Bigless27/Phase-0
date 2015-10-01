//chapter 2//
//
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

//