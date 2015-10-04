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