/*
  popup-win.js

  Code that makes HTML A-links with class name js-popup open documents in
  a document window. Just one popup window is supported and that is re-used
  for all content.

  Requires core.js

  v1.0 of 10 Sep 2007  - Original version.
  v1.1 of 11 Nov 2008  - initPopups() now calls elemHasClass() instead of
                         containsWord() from core.js.
*/


// Adds initPopups to window's onload event
addOnload(initPopups);


/*
 * Global variable storing reference to any open window.
 */
var popupWdw = null;


/*
 * Scans all links in HTML document and sets onclick event handler of any link
 * with class 'js-popup' to trigger popupWindow() instead of performing default
 * action.
 *
 * @return void.
 */
function initPopups() {
  for ( var i = 0; i < document.links.length; i++ ) {
    if ( elemHasClass(document.links[i], 'js-popup') ) {
      document.links[i].onclick = popupWindow;
    }
  }
}


/*
 * Pops up a window and loads initiating link's href into it.
 *
 * If the window is already open it is closed and re-opened. This is because it
 * guarantees that the window will appear in front of the window containing the
 * link.
 *
 * @return boolean False to prevent triggering link performing its default
 *   action.
 *
 */
function popupWindow() {
  // if window already open, close it
  if ( popupWdw && ! popupWdw.closed )
    popupWdw.close();
  // open window containing document referenced by link's href and focus it
  popupWdw = window.open(
    this.href, 'popupWin', 'scrollbars=yes,width=500,height=400'
  );
  popupWdw.focus;
  return false;
}
