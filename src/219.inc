<p>
  In 2-D, the 2 &times; 2 matrix is very simple. If you want to rotate a column
  vector <var>v</var> by <var>t</var> degrees using matrix <var>M</var>, use
</p>

<p>
  <code>M = {{cos t, -sin t}, {sin t, cos t}}</code>
</p>

<p>
  in <code>M * v</code>.
</p>

<p>
  If you have a row vector, use the transpose of <var>M</var> (turn rows into
  columns and vice versa). If you want to combine rotations, in 2-D you can just
  add their angles, but in higher dimensions you must multiply their matrices.
</p>