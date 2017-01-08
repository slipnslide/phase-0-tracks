// until i is equal to the length of the string
// for each string passed in take the last letter and add it to an empty string
var str = "hah hah hah";

function reverse(str) {
  var newStr = "";
  for (var i = str.length - 1; i >=0; i--)
    newStr += str[i];
  return newStr;
}

var newStr = reverse(str);
function palindrome(newStr){
if (newStr == str) {
  console.log ("Palindrome!");
} else {
 console.log(newStr);
}
}

palindrome("hah hah hah");
if (1 == 1){
  console.log (reverse("hi there!"));
}
