
// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:




// Release 1:

document.getElementById("release-0").className = "done";


// Release 2:

document.getElementById("release-1").style.display = "none";



// Release 3:
document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2.";


// Release 4:

document.getElementById("release-3").style.backgroundColor = "#955251";


// Release 5:


var elems = document.getElementsByClassName("release-4");
for(var i=0; i < elems.length; i++) {
  elems[i].style.fontSize = "2em";
}
// Release 6:

var tmpl = document.getElementById("hidden");
document.body.appendChild(tmpl.content.cloneNode(true));


/*
-The concepts that I solidified while working on this challenge was sytax. Correct syntax is very important.
-The most difficult part of this challenge was getting the syntax right. One non-capatalized letter threw the whole thing off. This also took us a while to debug it.
-Some useful methods where getElementById() and getElementsByClassname() to access the elements. Then to manipulate them you can change the color, backgoundColor, and even the fontSize.
 */