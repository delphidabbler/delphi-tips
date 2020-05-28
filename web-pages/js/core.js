/*
  core.js

  Contains essential JavaScript routines. This file should be included first
  in any HTML page that uses JavaScript.

  v1.0 of 10 Sep 2007  - Original version.
*/


/*
 * Checks if a string contains a word. Check no substrings are allowed, whole
 * words are checked.
 *
 * E.g. containsWord('Freda Bloggs', 'Fred') returns false while
 * containsWord('Freda Bloggs', 'Freda') returns true.
 *
 * @param str string String to be checked.
 * @param word string Word being search for.
 * @return boolean True if word is in string, false otherwise.
 */
function containsWord(str, word) {
  if (str == '')
    return false;
  var words = str.split(' ');
  for ( var i = 0; i < words.length; i++ ) {
      if ( word == words[i] )
        return true;
  }
  return false;
}


/*
 * Checks if an HTML element has a specified CSS class.
 *
 * @param elem HTML-element-object Element to be checked.
 * @param className string Name of required CSS class.
 * @return boolean True if element has required class, false otherwise.
 */
function elemHasClass(elem, className) {
  return containsWord(elem.className, className);
}


/*
 * Adds a function to the window's onload event.
 *
 * Enables more than one function to be added to window.onload event.
 *
 * @param newFunction Function-reference Function to be added to window.onload.
 * @return void.
 */
function addOnload(newFunction) {
  var oldOnload = window.onload;
  if ( typeof oldOnload == "function" ) {
    window.onload = function() {
      if ( oldOnload ) {
        oldOnload();
      }
      newFunction();
    }
  }
  else {
    window.onload = newFunction;
  }
}
