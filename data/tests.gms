$onempty

set  s  'Example set of animals'  /
  a  Aardvark
  b  'Blue whale'
  c  Chicken
  d  Dingo
  e  Elephant
  f  Frog
  g  Grasshopper
  /;

set  t  'Example set of colors'  /
  r  Red
  o  Orange
  y  Yellow
  g  Green
  b  Blue
  i  Indigo
  v  Violet
  /;

set  u  'Example set of countries'  /
  CA  Canada
  US  United States
  CN  China
  JP  Japan
  /;

sets
  s1(s)      'First subset of s0'           / a, b, c, d /
  s2(s)      'Second subset of s0'          / e, f, g /
  s3(s,t)    'Two-dimensional set'          / set.s.set.t yes /
  s4(s,t,u)  'Three-dimensional set'        / a.set.t.set.u no /
  s5         'Set with unspecified parent'  / b, d, f /
  s6(*)      'Set under the universal set'  / b, d, f /
  ;

parameters
  p1(s)    'Example parameter with animal data'  / /
  p2(t)    'Example parameter with color data'   / set.t 0 /
  p3(s,t)  'Two-dimensional parameter'           / set.s.y 1 /
  ;

p1('a') = 1;

execute_unload 'tests.gdx'