/*
  js-detect.js

  Code that scans an HTML document and shows elements with js-reveal-* class
  names and hides elements with js-hide class names.

  Requires core.js
  Requires js-detect.css

  v1.0 of 10 Sep 2007  - Original version.
*/


// Adds initJSDetect to window's onload event
addOnload(initJSDetect);


/*
 * Scans HTML document and shows or hides as appropriate any element with a
 * js-reveal-inline, js-reveal-block or js-hide class.
 *
 * @return void.
 */
function initJSDetect() {
  // scan all tags in document
  var elems = document.getElementsByTagName("*");
  for ( var i = 0; i < elems.length; i++ ) {
    // we must be able to detect required class names in class attributes
    // that contain more than one (space separated) class name, hence we
    // don't just check for equality with class name
      if ( elemHasClass(elems[i], 'js-reveal-inline') ) {
        elems[i].style.display = 'inline';
      }
      if ( elemHasClass(elems[i], 'js-reveal-block') ) {
        elems[i].style.display = 'block';
      }
      if ( elemHasClass(elems[i], 'js-hide') ) {
        elems[i].style.display = 'none';
      }
  }
}
