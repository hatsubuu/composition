\version "2.24.4"

\header {
  % Remove default LilyPond tagline
  tagline = ##f
  title = "Chromatic Invention"
  composer = "Nicole Woo"
}

\paper {
  % Add space for instrument names
  indent = 10\mm
  left-margin = 15\mm
  right-margin = 15\mm
  top-margin = 15\mm
  bottom-margin = 15\mm
  system-system-spacing =
    #'((basic-distance . 16) 
       (minimum-distance . 8)
       (padding . 4)
       (stretchability . 60)) % defaults: 12, 8, 1, 60
  system-count = 6
}

global = {
  \key c \major
  \time 3/4
  \tempo "Andante" 4=80
  \set Timing.beamExceptions = #'()
  %\set Timing.beatBase = #1/4
  \set Timing.beatStructure = 1,1,1
}

right = \relative c'' {
  \global
  % Music follows here.
  r8 f,8( des g~ g4~ | g8 fis \tuplet 3/2 {d bes c~} c) e~( | 
  e f~ f4 fis | g8 bes~ bes4 a) |
  r8 g8( es a~ a4~ | a8 gis \tuplet 3/2 {e c d~} d fis~ | 
  fis) r \tuplet 3/2 {cis'( a b~} b dis~ | dis) r \tuplet 3/2 {b( g a~} a cis~ |
  cis) r \tuplet 3/2 {dis( b cis~} cis f~ | f) r \tuplet 3/2 {cis( a b~} b ees~ |
  ees) d~-- d fis~-- fis e~-- | e4 aes-- g-- |
  aes4-- r r | R2. | 
  r8 des,( f b,~ b4~ | b8 c \tuplet 3/2 {e as ges~} ges) d~( |
  d des~ des4 c | b8 gis~ gis4 a) |
  b4( ees) \tuplet 3/2 {d8( fis e} | bes4 d4.) c8( |
  b8 dis a4.) bes8( | a8 cis g4.) aes8( | 
  g8 b f4.) ges8( | f8 a dis,4. e8) |
  r8 f8( des g~ g4~ | g8 fis \tuplet 3/2 {d bes c~} c) e~-- | 
  e f~-- f4 fis-- | g8-> bes~-> bes4 aes8-> ges8-> | f2.-> \fine
}

dynamics = {
  \global
  % Dynamics follow here.

}

left = \relative c' {
  \global
  % Music follows here.
  R2. | R2. | 
  r8 c,8( aes d~ d4~ | d8 cis \tuplet 3/2 {a f g~} g) b~( | 
  b c~ c4 cis | d8 f~ f4 e~ |
  e8) g~( g4 gis | a8) d,~( d4 dis |
  e8) a~( a4 ais | b8) e,~( e4 f |
  fis4) gis4-- e-- | bes'2-- g4~-- | 
  g8 as( c ges~ ges4~ | ges8 g \tuplet 3/2 {b es des~} des) a~( |
  a as~ as4 g | fis8 dis~ dis4 e) |
  r8 ges( bes e,~ e4~ | e8 f \tuplet 3/2 {a cis b~} b) g~( |
  g fis8~ fis4 f | e8 cis~ cis4) d( |
  ees4) d8( b c4 | des4) c8( a bes4 |
  ces4) bes8( g gis4 | a4) gis8( f fis e |
  f4.) f'8( des g~ | g fis \tuplet 3/2 {d bes c~} c) e~-- | 
  e f~-- f4 fis-- | g8-> bes~-> bes4 aes8-> ges-> | f2.-> \fine
}

\score {
  \new PianoStaff \with {
    instrumentName = ""
  } <<
    \new Staff = "right" \right
    \new Dynamics \dynamics
    \new Staff = "left" { \clef bass \left }
  >>
  \layout { }
  \midi {}
}
