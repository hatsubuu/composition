\version "2.24.4"

right = \relative c'' {
  \global
  % Music follows here.
  R2. | R |
  c8-. c-. c-. c-. c-. c-. | <c d>-. q-. q-. q-. q-. q-. |
  R2. |
  \time 4/4
  R1 | b8-- b-- b-- b-- b-- b-- b-- b-- |
  <b c>8-- q-- q-- q-- q-- q-- q-- q-- | <b c d>-- q-- q-- q-- q-- q-- q-- q-- |
  R1 |
  <f a>8-- q-- q-- q-- q-- q-- q-- q-- | r <e f a> q q q q q q |
  r <e f b> q q q q q q | q q q q q q q q |
  r8 <e f a> q q q q q q |
  r <e f b> q q q q q q |
  \time 3/4
  q q q q q q |
  r8 <c' e f> q q q q | r <c e f> q q q q | q q q q q q |
  r8 <e f b>-. <e f a>-. <e f b>-. <e f a>-. <e f b>-. | r <a b d>-. <f a b>-. <a b d>-. <f a b>-. <a b d>-.  | 
  <f a b>-. <a b d>-. <f a b>-. <a b d>-. <f a b>-. <a b d>-.  | 
  <cis, e f>-. <e f a>-. <cis e f>-. <e f a>-. <cis e f>-. <e f a>-.  |
  <a, cis d>-. <cis d f>-. <a cis d>-. <cis d f>-. <a cis d>-. <cis d f>-.  |
  <f, a b>-. <a b d>-. <f a b>-. <a b d>-. <f a b>-. <a b d>-. |
  R2. | R |
  <a e'>8-- q-- q-- q-- q-- q-- | q-- q-- q-- q-- q-- q-- | q q q q q q | q q q q q q | <gis e'> q <gis d'> q q q |
  <fis d'> q <fis cis'> q q q | q q q q q q | q q q q q q | q q q q q q |
  <e cis'> q q q <e b'> q | <d b'> q q q <d a'> q |
  q q q q q q | q4\fermata r r |
  <e' f a>8-. q-. q-. q-. r4 | <b e f>8-. q-. q-. q-. r4 |
  <e, f gis>8-. q-. q-. q-. r4\fermata |
  d8-- d-- d-- d-- d-- d-- |
  \time 4/4
  <d e> q q q q q q q | <d f> q q q q q q q |
  r <d e f> q q q q q q | q q q q q q q q | 
  r q q q q q q q | q q q q q q q q |
  r8 <b c f>-. q-. q-. q2-- | r8 <b c e>-. q-. q-. q2-- |
  r8 <b c dis>-. q-. q-. q2--\fermata | 
  e8-- e-- e-- e-- e-- e-- e-- e-- |
  \time 3/4
  <d e>-- q-- q-- q-- q-- q-- | q q <cis e> q q q |
  q q q q q q | q q q q q q | q q q q q q | q q q q q q |
  <d gis a>8 q q q q q | q q q q q q | q2.-- |
  R2. |
  r4 <f a>8-- q-- q4-- | r4 q8-- q-- q4~-- |
  q2. |
  r4 <e f a>8-- q-- q4-- | r4 q8-- q-- q4~-- |
  q2. |
  \time 4/4
  r4 <e f b>-- q-- r | r2 q4-- q~-- |
  q1 |
  r2 <e f c'>2~-- | q\fermata r\fermata \fine
}

dynamics = {
  \global
  % Dynamics follow here.
  %\override DynamicText.X-offset = 0
  \override DynamicText.X-offset = 0
  \override TextScript.Y-offset = -0.5
  s2.\p |
  s2.*3 |
  %\once \override TextScript.X-offset = -1
  s2.-"l.v." |
  \time 4/4 
  s1*4\mp
  s1-"l.v." |
  s1\pp |
  s1*5-\markup \italic sim. |
  \time 3/4
  s2. |
  s2. |
  s2.*2 |
  s2.*2\< |
  s2.\mf |
  s2.\> |
  s2. |
  s2.\p |
  s2.*2 |
  s2.*2\mp |
  s2.*6-\markup \italic sim. |
  s2.*3\< |
  s2.*2\mf |
  s2.*2\mf\> |
  s2.\p |
  s2.\pp |
  \time 4/4
  s1*2-\markup \italic sim. |
  s2 s\< | s\mp\> s\pp |
  s2 s\< | s\mp\> s\pp |
  s1*3 |
  s1 |
  \time 3/4 
  s2.\< |
  s2.\mp-\markup \italic sim. |
  s2.*4 |
  s2.\< |
  s2.\mf\> |
  s2.\p |
  s2. |
  s8 s8\pp s2 |
}

left = \relative c' {
  \global
  % Music follows here.
  \clef treble
  a'8-._\markup \italic "con pedale" a-. a-. a-. a-. a-. | <a b>-. q-. q-. q-. q-. q-. |
  q-. q-. q-. q-. q-. q-. | q-. q-. q-. q-. q-. q-. |
  R2. |
  \time 4/4
  <f a>8-- q-- q-- q-- q-- q-- q-- q-- | <e f a>-- q-- q-- q-- q-- q-- q-- q-- |
  q-- q-- q-- q-- q-- q-- q-- q-- | q-- q-- q-- q-- q-- q-- q-- q-- |
  R1 |
  R1*4 |
  \clef bass
  R1*2 |
  \time 3/4
  R2. |
  \clef treble
  f2.( | a) | R |
  e( | gis) | R |
  d( | f) | R |
  R2. | R |
  <cis gis'>8-- q-- q-- q-- q-- q-- | q-- q-- q-- q-- q-- q-- | q q q q q q | q q q q q q | <b fis'> q q q q q | 
  <a e'> q q q q q | q q q q q q | q q q q q q | q q q q q q |
  <gis d'> q q q q q | <fis cis'> q q q q q |
  <f c'> q q q q q | q4\fermata r r |
  R2. | R | R\fermata | R |
  \time 4/4
  R1*3 | 
  \clef bass
  gis1 | 
  d1 | gis, | f' |
  d1 | b2 gis\fermata |
  R1 |
  \time 3/4
  R2. |
  <a a'>2.~-> | q2.~ | q2.~ | q2.~ | q2. |
  <f! f'!>2.->( | <d d'>2.-> | <b b'>2.--) |
  R2. |
  R2.*6 |
  \time 4/4
  R1*4 | R1\fermata \fine
}