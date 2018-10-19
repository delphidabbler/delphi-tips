<p>
  The signed area can be computed in linear time by a simple sum. The key
  formula is this: If the coordinates of vertex <var>v_i</var> are
  <var>x_i</var> and <var>y_i</var>, twice the signed area of a polygon is given
  by:
</p>

<div class="frame">
<pre class="source-body">2 A( P ) = sum_{i = 0}^{n - 1} (x_i y_{i + 1} - y_i x_{i + 1})</pre>
</div>

<p>
  Here <var>n</var> is the number of vertices of the polygon. A rearrangement of
  terms in this equation can save multiplications and operate on coordinate
  differences, and so may be both faster and more accurate:
</p>

<div class="frame">
<pre class="source-body">2 A( P ) = sum_{i = 0}^{n - 1} ((x_i + x_{i + 1}) (y_{i + 1} - y_i))</pre>
</div>

<p>
  To find the area of a planar polygon not in the x-y plane, use:
</p>

<div class="frame">
<pre class="source-body">2 A(P) = abs(N . (sum_{i = 0}^{n - 1} (v_i &times; v_{i + 1})))</pre>
</div>

<p>
  where <var>N</var> is a unit vector normal to the plane. The '.' represents
  the dot product operator, the '&times;' represents the cross product operator,
  and <code>abs()</code> is the absolute value function.
</p>
