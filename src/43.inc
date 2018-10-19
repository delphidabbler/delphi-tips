<p>
  To prevent a <var>TImage</var> control (or any graphic control) redrawing
  (and hence flickering) when moved, parent it on a <var>TWinControl</var>
  (e.g. <var>TPanel</var> with <var>FullRedraw</var> set true) and move the
  <var>TWinControl</var> instead.
</p>
