/*
  To use this code, create a link with href='javascript:void(0);' and
  onclick="showHide('linkid', 'blockid', 'show me', hide me');"
  Give the link the id specified in the first param of showHide(). Give the
  block to be shown or hidden the id in the second param of showHide().
*/

/*
  Shows or hides a block of text when a link is clicked.
  @param linkId - Id of link. Link's caption is toggled between showCaption
    and hideCaption depending.
  @param blockElem - Id of block of HTML to be displayed or hidden. Block is
    toggled between the two states
  @param showCaption - HTML to be displayed in link when block is hidden.
  @param hideCaption - HTML to be displayed in link when block is displayed.
*/

function showHide(linkId, blockId, showCaption, hideCaption) {
  var linkElem = document.getElementById(linkId);
  var blockElem = document.getElementById(blockId);
  if ( blockElem.style.display == 'block' ) {
    // block visible: hide it
    blockElem.style.display = 'none';
    linkElem.innerHTML = showCaption;
  }
  else {
    // block invisible: show it
    blockElem.style.display = 'block';
    linkElem.innerHTML = hideCaption;
  }
  return false;
}
