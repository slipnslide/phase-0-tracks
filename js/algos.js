// create a function
  // loop through the array
  // check the length of each string against the string that came before
  // keep that string if longer, ignore it if shorter
  // when you get to the end of the array return the last thing you kept
function longestWord(array) {
  var longestString = "";
  var array = array;
  for (var i = 0; i < array.length; i++){
    if (array[i].length >= longestString.length) {
      longestString = array[i];
    }
  }
  return longestString;
}

// create a function that takes two objects
// find the keys of the two objects
// create something to store keys if they match
// loop through everything
  // compare the key of the first object with all of the keys of the second object
    // then loop move one down the first object and do it again
  // if there is the same key in both objects then check the values
function match(objOne, objTwo) {
  var objOneKeys = Object.keys(objOne);
  var objTwoKeys = Object.keys(objTwo);
  var matchKey = [];


  for (var i = objOneKeys.length - 1; i >= 0; i--){
    for (var j = objOneKeys.length - 1; j >= 0; j--){
      if (objOneKeys[i] === objTwoKeys[j]){
        matchKey.push(objOneKeys[i]);
      }
    }
    if (matchKey === []){
      return false;
    }
  }
  for (var x = 0; x <= matchKey.length; x++){
    if (objOne[matchKey[x]] === objTwo[matchKey[x]]){
      return true;
    } else {
      return false;
    }
  }
}

// create a function that takes an interger
// that sets the the number of strings in the array
// loop over the alphabet to pick letters randomly
// add those letters to the word that's length is randomly defined from 1-10
// loop again to add the words to the array
function randomArray(num){
  var arrayOfStrings = [];
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  for (var j = 0; j < num; j++){
    var word = "";
    for (var i = 0; i < (Math.floor(Math.random() * 10 ) + 1); i++){
      word += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
    }
    arrayOfStrings.push(word);
  }
  return arrayOfStrings;
}





test_arr = ["long phrase","longest phrase","longer phrase"];
console.log(longestWord(test_arr)); 
test = ["one", "2", "three"];
console.log(longestWord(test)); 
potato = ["potato", "turtle", "turtlessssssss", "shoe"];
console.log(longestWord(potato)); 


var a = {name: "Steven", age: 54};
var b = {name: "Tamir", age: 54};
console.log(match(a, b)); 

var c = {name: "moon moon", age: 2, blah: "blah blah"};
var d = {name: "Joe", age: 74, blah: "deblah blah"};
console.log(match(c, d)); 


for (var i = 0; i < 10; i++){
  var someArray = randomArray(3);
  console.log(someArray);
  console.log (longestWord(someArray));
}