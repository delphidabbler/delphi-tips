/*
 * offsite-win.js
 *
 * Code that makes HTML A-links with class name 'offsite' open documents in a
 * new standard window. A new window is created for every link clicked.
 *
 * Requires core.js
 *
 * $Rev: 1358 $
 * $Date: 2013-04-16 17:59:35 +0100 (Tue, 16 Apr 2013) $
 */

// Adds initOffsites to window's onload event
addOnload(initOffsites);


/*
 * Scans all links in HTML document and sets onclick event handler of any link
 * with one of the 'offsite*' classes to trigger offsiteWindow() instead of
 * performing default action.
 *
 * return void.
 */
function initOffsites() {
  for ( var i = 0; i < document.links.length; i++ ) {
    if (
      elemHasClass(document.links[i], 'offsite')
      || elemHasClass(document.links[i], 'offsite-img')
      || elemHasClass(document.links[i], 'offsite-no-glyph')
    ) {
      document.links[i].onclick = offsiteWindow;
    }
  }
}


/*
 * Creates a new window and loads initiating link's href into it.
 *
 * @return boolean False to prevent triggering link performing its default
 *   action.
 */
function offsiteWindow() {
  var wdw = window.open(this.href, '', '');
  return false;
}
