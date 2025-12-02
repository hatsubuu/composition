\version "2.24.4"

sopranoVoice = \relative c'' {
  \global
  \dynamicUp
  % Music follows here.
  \time 3/4
  R2.*5 |
  \time 4/4
  R1*5 |
  r2 a4\p a | a2. gis4 | b1 | 
  r2 a4 b | a2. gis8 gis | b1 |
  \time 3/4
  r2 a4 | a2 gis4 | d'4 d2 |
  r4 c4\mp\< d | c4. b8 b4 | f'2.\mf |
  R2.*4 |
  r2 e4\mf | d4 cis b | cis2. | cis8 cis~ cis4 d8( b) | cis2.~ | cis4 r4 d4 |
  cis2 b4 | a2 a4 | a2 b8 gis | a2 r4 |
  cis4\cresc b cis | d2 e4 | fis4. fis8 fis4 | 
  \once \override TextSpanner.bound-details.left.text = \markup \upright \bold "rit."
  a2.(\f\startTextSpan | f!4)\fermata\stopTextSpan  r4
  f8\mf f~ | f8 f f4 e8 d | a2 gis4 | b2 r4\fermata | 
  \tempo "a tempo" R2. |
  \time 4/4
  R1 |
  r2 a4\mp a | a2. gis4 | b1 | 
  r2 a4 b | a2. gis4 | b1 |
  r2 a2\p | a2. gis4 | 
  d'1 |
  r2 d2 | c2. b4 | e1 |
  R1 |
  \time 3/4
  d4\mp cis b | cis2 cis8 cis | cis2 d8( b) | cis2.~ | cis4 r4 d4 |
  cis2 b4 | a2\< a4 | a2\mf\> b8( gis) | a2.\mp | \break
  r2 a4\p | a2 gis4 | b2. | r4 a\< b | a2 gis4 | d'2.\mp |
  \time 4/4
  r2 c2\p | c2. b4 | d2 r | r2 c2 | c2. b4 | e2\fermata r2\fermata \fine
  
}

verse = \lyricmode {
  \override LyricHyphen.minimum-distance = #1.0
  % Lyrics follow here.
  There will come soft rains and the smell of the ground,
  And swal -- lows cir -- cling with their shim -- mer -- ing sound;
  
  
  And frogs in the pools sing -- ing at __ night, __
  And wild plum trees in trem -- u -- lous white;
  
  
  Rob -- ins will wear their feath -- er -- y fire __
  Whis -- tling their whims on a low fence wire;
  
  
  And not one will know of the war, not one
  Will care at last when it is done.
  
  
  Not one would mind, nei -- ther bird nor __ tree
  If man -- kind per -- ished ut -- ter -- ly;
  
  
  And Spring her -- self, when she woke at dawn,
  Would scarce -- ly know that we were gone. 
}