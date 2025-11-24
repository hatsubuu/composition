\version "2.24.4"

\paper {
  % Add space for instrument names
  indent = 10\mm
  left-margin = 15\mm
  right-margin = 15\mm
  top-margin = 15\mm
  bottom-margin = 15\mm
  system-system-spacing =
    #'((basic-distance . 12) 
       (minimum-distance . 4)
       (padding . 4)
       (stretchability . 60)) % defaults: 12, 8, 1, 60
}

\header {
  tagline = ""
  title = "placeholder"
  composer = "placeholder"
}


global = {
  \key c \major
  \time 4/4
  \tempo 4=100
}

violin = \relative c'' {
  \global
  % Music follows here.
  \partial 4 \tuplet 3/2 {a8\f b a} |
  e2. \tuplet 3/2 {a8 b a} |
  d2. \tuplet 3/2 {d8 e d} |
  c2. \tuplet 3/2 {c8 d c} |
  bes2. gis4~ |
  gis2 r4 \tuplet 3/2 {a8\p b a} |
  e2. \tuplet 3/2 {a8 b a} |
  ees'2. \tuplet 3/2 {d8 ees d} |
  cis2. \tuplet 3/2 {cis8 d cis} |
  bes2. gis4~ |
  gis2 bes4 gis |
  \partial 2 \once \override Beam.grow-direction = #RIGHT \featherDurations 1/3 {bes32\>([ gis bes gis bes gis bes gis bes gis bes gis bes gis bes gis\!)]} |
  r2\fermata c4~\mf( \tuplet 3/2 {c8 des c)} |
  fis2. \tuplet 3/2 {b,8( c b)} |
  f'?2. \tuplet 3/2 {c8( des c)} |
  fis4 \tuplet 3/2 {b,8( c b)} f'4 \tuplet 3/2 {c8( des c)} |
  fis,2. \tuplet 3/2 {a8( fis4)~} |
  fis2 \tuplet 3/2 {a8( fis4)~} fis4 |
  \tuplet 3/2 {gis8( fis4)} \tuplet 3/2 {gis8( fis4)} \tuplet 3/2 {g8( f) r} \tuplet 3/2 {g8( f) r} |
  \tuplet 3/2 {g8( f) r} r4 fis2\pp |
  \tuplet 3/2 {g8( fis) r} r4 g8( fis) r4 |
  \tuplet 3/2 {fis8( ees) r} r4 fis8( ees) r4 |
  \partial 2 \once \override Beam.grow-direction = #RIGHT \featherDurations 1/3 {fis32\<([ees fis ees fis ees fis ees fis ees fis ees fis ees fis ees\ff)]} |
  r2\fermata fis4~\p \tuplet 3/2 {fis8 g fis} |
  c'2. b4~ |
  b2 r4 \tuplet 3/2 {a8 bes a} |
  ees'2. d4 |
  \tuplet 3/2 {cis8 d cis} g'2.\glissando | 
  g'4 g \tuplet 3/2 {g4 g g} |
  \partial 2 \once \override Beam.grow-direction = #RIGHT \featherDurations 1/3 {g32\mp[g g g g g g g g g g g g g g g]} |
  g1 | fis | 
  f?2\pp \tuplet 3/2 {g8( fis) r} \tuplet 3/2 {g8( fis) r} |
  r2\fermata r4 \tuplet 3/2 {e,,8 f e~} |
  e2 \tuplet 3/2 {e8 f e} r4 |
  \tuplet 3/2 {e8 f e} \tuplet 3/2 {a8 b a} r4 \tuplet 3/2 {g8 a g} | 
  \tuplet 3/2 {eis8 fis eis~} eis2 \tuplet 3/2 {eis8 fis eis} |
  r4 \tuplet 3/2 {eis8 fis eis} r4 \tuplet 3/2 {eis8 fis eis} |
  c4 \tuplet 3/2 {eis8 fis eis} c'2 |
  \tuplet 3/2 {e,8 f e} \tuplet 3/2 {a8 b a} \tuplet 3/2 {g8 a g} \tuplet 3/2 {eis8 fis eis} |
  \tuplet 3/2 {d8 e d} \tuplet 3/2 {gis8 ais gis} \tuplet 3/2 {fis8 gis fis} \tuplet 3/2 {e8 fis e} |
  \tuplet 3/2 {a8 b a} \tuplet 3/2 {a'8 b a} \tuplet 3/2 {bes,8 c bes} \tuplet 3/2 {aes'8 bes aes} |
  \tuplet 3/2 {c,8 d c} \tuplet 3/2 {g'8 a g} \tuplet 3/2 {e8 f e} \tuplet 3/2 {e'8 f ees~} |
  ees2 ees | ees4 ees \tuplet 3/2 {ees4 ees ees} |
  \partial 2 \once \override Beam.grow-direction = #RIGHT \featherDurations 1/3 {ees32\ff[ees ees ees ees ees ees ees ees ees ees ees ees ees ees ees]} |
  ees1 | d |
  \partial 2 \once \override Beam.grow-direction = #RIGHT \featherDurations 1/3 {cis32([bes cis bes cis bes cis bes cis bes cis bes cis bes cis bes)]} |
  r2 ees,,4. d8 | 
  \partial 2 \once \override Beam.grow-direction = #RIGHT \featherDurations 1/3 {cis32([bes cis bes cis bes cis bes cis bes cis bes cis bes cis bes)]} |
  r2\fermata r4 \tuplet 3/2 {a'8\mp b a} |
  e2. \tuplet 3/2 {a8 b a} |
  d2. \tuplet 3/2 {d8 e d} |
  c2. \tuplet 3/2 {c8 d c} |
  bes2. gis4~ |
  gis2 r4 \tuplet 3/2 {a8 b a} |
  e2. \tuplet 3/2 {a8 b a} |
  d2. \tuplet 3/2 {g,8 a g} |
  c2. \tuplet 3/2 {a8 b a} |
  d2. r4 |
  \partial 2 \once \override Beam.grow-direction = #RIGHT \featherDurations 1/3 {ees,32\mf\<([cis ees cis ees cis ees cis ees cis ees cis ees cis ees cis)]} |
  d1\fermata\ff\> \bar "||"\break
  a'16(\pp d,8.~ d2.) |
  a'16( d,8.~ d2.) |
  d4( a'16 d,8. a'16 d,8.~ d4) |
  d2.( a'16 d,8.) |
  << {r2 r4 \tuplet 3/2 {a'8 b a} } \\ {d,4( a'16 d,8.~ d4) d4 } >> |
}

\score {
  \new Staff \with {
    instrumentName = ""
  } \violin
  \layout { }
}
