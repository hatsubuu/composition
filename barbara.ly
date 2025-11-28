\version "2.24.4"

\header {
  title = "Barbara Allen Plays Piano"
  composer = "Nicole Woo"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  % Add space for instrument names
  indent = 18\mm
  left-margin = 15\mm
  right-margin = 15\mm
  top-margin = 15\mm
  bottom-margin = 15\mm
  system-system-spacing =
    #'((basic-distance . 12) 
       (minimum-distance . 8)
       (padding . 1)
       (stretchability . 60)) % defaults: 12, 8, 1, 60
  %system-count = 30
  %page-count = 6
}

global = {
  \key c \major
  \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=80
  \accidentalStyle modern
  
  %\override Staff.TimeSignature.break-visibility = ##(#f #f #t)
  %\override Staff.KeySignature.break-visibility = ##(#f #f #t)  
  %\set Staff.explicitKeySignatureVisibility = ##(#f #f #t)
  %\set Staff.printKeyCancellation = ##f
  %\override Staff.KeyCancellation.break-visibility = #all-invisible
  
  %\set Score.barNumberVisibility = #all-bar-numbers-visible
  %\override Score.BarNumber.break-visibility = #end-of-line-invisible
}

right = \relative c'' {
  \global
  % Music follows here.
  \partial 8 c8( | e f g4.) f8( | e d c4.) d8( | e g c4) c( | b8 g4.) r8 b( |
  c a f4) g8( a | g e c4.) d8( | e g a4.) g8( | e c4.) r8 <c g>( |
  <e c> <f d> <g e>4.) <f d>8( | <e c> <d g,> <c e,>4.) <d g,>8( | <e c> <g e> <c e,>4) q( | <b d,>8 <g b,>4.) r8 <b g>( |
  <c f,> <a c,> <f a,>4) <g e>8( <a f> | <g e> <e c> <c a>4.) <d b>8( | <e c> <g c,> <a b,>4.) <g b,>8( | <e c> <c g>4.) r4 |
  \section \break
  \tempo "Allegro" 4=100
  e16( f g8~ g16) g, a b c d e c | f16( e d8~ d16) g, b c d e f d | 
  e16( a c8~ c16) d c b a c b a  | b16( a g) fis g b d, c bes c e g |
  r8 c16( a f8) g a f | r8 c'16( g e8) f g e | 
  r8 f16( g a8) g f d | e16( d c8~ c16) d e f g a bes g |
  c a f c a c f a c b a b | c g e c g c e g c b a g |
  a fis d a fis a d fis a c b a | g d b g d g b d g f e d |
  r8 c' g e fis g | r b g d fis g |
  r c a e fis g | r d' a fis g a |
  b16( a g8~ g16) g, b c d c b a | g2.--\fermata |
  \section \break
  \time 6/8 \tempo "Andante grazioso" 4.=60
  e'8.( f16 g8) g4 f8 | e8.( d16 c8) c4 g'8 | a4 a8 c4 c8 | << {b4 a16( fis) g4 f8} \\ {d4. b4.} >> |
  e8.( f16 g8) g4 g8 | a8.( b16 c8) c4 a8 | g4 e8 f4 d8 | <d b f>4.( <c g e>) |
  e8.( c16 b8) a4 b8 | c4.( b4) d8 | c8.( e16 a8) a4 b8 | c8.( b16 a8) gis4. |
  f8.( e16 g8) bes-. a-. f-. | d8.( cis16 f8) aes-. g-. e-. | d8.( e16 f8) e( g) c,-. | d( f) b,-. c4.~ | c r4. |
   \section \break
  \time 4/4 \tempo "Allegro con brio" 4=168
  \clef bass r8 <e,, c> q q q q q q | q q q q q q <f c> q | 
  <g c,>4~( q16 f e d c8) r r4 | \clef treble \acciaccatura fis''8 g4~( g16 f e d c8) r r4 |
  \clef bass <a, f>8 q q q q q q q | q q q q q q <c f,> q |
  <d g,>4~( q16 c b a g8) r r4 | \clef treble \acciaccatura cis''8 d4~( d16 c b a g8) r r4 |
  \acciaccatura b8 c2.~ c16 a( f a | c a f a c a f a c a f a c a f a |
  c a f a g a g e c d e g a g e c) | a8-. r g-. r e-. r c-. r | g1\fermata |
  \section \break
  \time 4/2 \tempo "Andante" 2=60 \key g \major
  <<
    {
      \autoBreaksOff
      b'1( c2 d | d1 c) | \break b1( a2 g | b1 a2) b | \break
      c1( d2 e | e1) d2( c | \break b1) b2( a | 
      \override TextSpanner.bound-details.left.text = \markup \upright \bold "rit."
      a1\startTextSpan \after 2.. \stopTextSpan g) 
      \autoBreaksOn
    }
    \\
    { \override TupletBracket.bracket-visibility = ##t
      \tuplet 6/4 {r8 b, d g d b}  \tuplet 6/4 {d b d g d b} \tuplet 6/4 {r d g b g d} \tuplet 6/4 {r d g b g d} | 
      \override TupletBracket.bracket-visibility = ##f 
      \omit TupletNumber
      \tuplet 6/4 {r d fis a fis d} \tuplet 6/4 {fis d fis a fis d} \tuplet 6/4 {r d fis a fis d} \tuplet 6/4 {fis d fis a fis d} |      
      \tuplet 6/4 {r b e g e b} \tuplet 6/4 {e b e g e b} \tuplet 6/4 {r a c e c a} \tuplet 6/4 {r bes cis e cis bes} |
      \tuplet 6/4 {r b d g d b} \tuplet 6/4 {d b d g d b} \tuplet 6/4 {r a d fis d a} \tuplet 6/4 {r b d g d b} |
      \tuplet 6/4 {r c e g e c}  \tuplet 6/4 {e c e g e c} \tuplet 6/4 {r e g c g e} \tuplet 6/4 {r e g c g e} | 
      \tuplet 6/4 {r e a c a e} \tuplet 6/4 {a e a c a e} \tuplet 6/4 {r e a c a e} \tuplet 6/4 {r c e a e c} | 
      \tuplet 6/4 {r b d g d b} \tuplet 6/4 {d b d g d b} \tuplet 6/4 {r c d fis d c} \tuplet 6/4 {r c d fis d c} |
      \tuplet 6/4 {r c d fis d c} \tuplet 6/4 {d c d fis d c} \tuplet 6/4 {r g b d b g} \tuplet 6/4 {b g b d b g} 
    }
  >>
  \section \break
  \time 3/4 \tempo "Moderato" 4=84 \key c \minor 
  r4 r c'4 | 
  ees8( f g fis aes d, | g2 f4) | 
  \tuplet 3/2 {d8( ees d} cis fis g ees | d2 c4) |
  r8 d( ees g a bes | c4) d,( b'~ |
  b8) bes( a aes g ees | cis d fis g \tuplet 3/2 {bes aes g)} |
  ees8( f g fis aes d, | g2 f4) | 
  \tuplet 3/2 {d8( ees d} cis fis g ees | d2 c4) |
  aes8( des \tuplet 3/2 {f aes des} \tuplet 3/2 {f ees des} |
  \tuplet 3/2 {c g ees} f fis g bes) | aes( g cis, d f ees | c2.)\fermata |
  \section \break
  \time 4/4 \key c \major \tempo "Vivace" 4=116
  c8-. e16( fis gis8) fis-. e16( d e d c8) d | e( gis c) c( ais4 fis) |
  ais8( c gis8. e16) fis8( gis e8. c16) | \pageBreak e16( gis e gis ais8.) gis16( e16 d e16 d c4) | 
  fis16( gis fis gis ais8) ais-. c,16( d c d e8) e-. | ais8.( gis16 e8) d-. c4-- r |
  c8-. e16( fis gis8) r dis8-. g16( a b8) r | d,8-. fis16( gis ais8) r f8-. a16( b cis8) r | 
  e,8-. gis16( ais c8) r g8-. b16( cis dis8) r | f16( cis f cis b8.) cis16( a16 f a f) dis8.( f16) |
  d4-- r r2 | R1 |
  g8-. b16( cis dis8) cis-. b16( a b a g8) a-. | b( dis g) g( f4 cis) |
  f8( g dis8. b16) cis8( dis b8. g16) | b16( dis b dis f8.) dis16( b16 a b16 a g8) r |
  \override TextSpanner.bound-details.left.text = \markup \upright \bold "rit."
  g16(\startTextSpan fis g fis e8) r e16( dis e dis cis8) r | c16( b c b c4)\stopTextSpan r2 |
  \fine
}

dynamics = {
  \global
  % Dynamics follow here.
  \override DynamicText.X-offset = 0
  
  \partial 8 s8\p |
  s2.*7 | s2 s4\mf | s2.*8 |
  s2.-\markup {\dynamic "mf" \italic"leggiero"} | s2.*3 |
  s2.\p | s2.*2 |
  s4 s2\< |
  s2.\mf | s2.*3 |
  s2.*2\p | s2.*2\cresc |
  s2.\f | s2. |
  
  s2.\mp | s2.*3 |
  s2.\< | s4. s\mf\> | s2. | s2.\mp |
  s2.\f | s2.*3 |
  s2.\p | s2.*4 |
  
  s1*8\pp |
  s1*2\cresc |
  s1\f | \once \override Hairpin.Y-offset = 1 s1\> | s1\p |
  
  s1*2\pp | s1*2 |
  s1*2 | s1 s\< |
  s1*2\mf | s1*2 |
  s1*2\> | s1*2\pp |
  
  s2 s4\p | s2.*4 |
  s2.\< | s2.\mf | s2. | s2. | 
  s2.\mp | s2.*3 |
  s2\< s4\f | s2. | s2.\> |
  s2.\mp |
  
  s1*6\mf |
  s1*3\pp\cresc |
  s2\f s\> | 
  s1*4\p |
  s1*2\f |
  s1\mf\> | s1\p |
}

left = \relative c' {
  \global
  % Music follows here.
  \clef treble
  \partial 8 r8 |
  c4( <e g>2) | c4( <e g>2) | c4( <e g>2) | g,4( <b d>2) |
  f4( <a c>2) | << {e'2. | g4( f2)}  \\ {c4( a2) | c2( g4)} >> | c4( <e g>4) r |
  \clef bass c,4( <g' c>2) | c,4( <g' c>2) | c,4( <g' c>2) | g,4( <d' g>2) |
  f,4( <c' f>2) | << {e2. | g4( f2)}  \\ {c4( a2) | c2( g4)} >> | c4( <e g>) r |
  \section \break
  c8 c'16( d e8) c c, c' | g,8 b'16( a b8) g g, g' | 
  a,8 a'16( b c8) a a, a' | g,8 b'16( a b8) g c c, |
  f16( g a8~ a16) b a g f g a f | e16( d c8~ c16) d e f e d c e |
  f16( e d8~ d16) c b a g a b g | c8 e'16( d c8) g e c |
  f, a' f a f f, | e g' e g e e, |
  d fis' a fis d d, | g d' f d g, f' |
  
  c16 e g c e c g e c d e g | b, d g b d b g d b c d g |
  c, e a c e c a e c d e a | d, fis a d fis d a fis d e fis d |
  g,8 b'16( a b8) g d d, | g2.--\fermata |
  \section \break 
  \clef treble
  << {g''4 g8 g4 g8 | g4 g8 g4 c8 | 
      c4 c8 a4 a8 } \\ 
     {c,8.( d16 e8) e4 b8 | 
      c8.( d16 e8) e4 e8 | f4 f8 f4 f8 } >> | g4 d8 g,4. |
  << {g'4 g8 g4 c8 | c4 c8 c4 c8 | c4 g8 g4. } \\ 
     {c,8.( d16 e8) e4 e8 | f8.( g16 a8) a4 f8 | e4 c8 b g4 } >> | \clef bass c4 g8 c,4. |
  a'8( c e a, c e) | gis,( d' e gis, d' e) |
  a,( c e f, c' dis) | e,( a c) <e, b'>4. |
  \clef treble
  <cis' bes'>4 r8 <d a'>4 r8 | <b aes'>4 r8 <c g'>4 r8 |
  \clef bass
  <f, d'>4 r8 <g c>4 r8 | <g b>4 r8 c8.( g16 e8) | c4. r4. |
  \section \break
  c,8 <c g'> q q q q q q | q q q q q q q q |
  q q q q q q q q | q q q q q q q q |
  <c f> q q q q q q q | q q q q q q <a f'> q |
  <b g'> q q q q q q q | q q q q q q q q |
  <a f'> q q q q q q q | q q q q q q q q |
  <f f'>4 <g' g'>2~ q8 c16 e | a8-. r g-. r e-. r c-. r | g1 |
  \section \break \key g \major
  <g g'>1 q2 q | <fis fis'>1~ q | <e e'>1 <c c'>2 <cis cis'> | <d d'>1~ q2 <g g'> |
  <e e'>1 <e e'>2 <c c'> | <c c'>1 <c c'>2 <e e'>2 | <d d'>1 <d d'> | <g g'>1~ q |
  \section \break
  \key c \minor
  R2. |
  c4 <ees g c> q | b <f' g d'> <g b d> |
  bes, <f' bes d> <f bes d> | aes, <ees' aes c> <ees aes c> |
  g, <ees' g bes> <ees g bes> | fis, <fis' a d> <f aes d> |
  g, <ees' g c> <ees g c> | g, <d' g b> <f g b> |
  c <ees g c> q | b <f' g d'> <g b d> |
  bes, <f' bes d> <f bes d> | aes, <ees' aes c> <ees aes c> |
  f, <aes' des f> <f aes des> | g, <g' c ees> <ees g c> | 
  g, <f' b d> <d g b> | c <ees g c>2\fermata |  
  \section \break
  \key c \major
  R1 | R1 |
  f8-. a16( b cis8) b-. a16( g a g f8) g-. | a( cis f) f( dis4 b) |
  dis8( f cis8. a16) b8( cis a8. f16) | a16( cis a cis dis8.) cis16( a16 g a16 g f4) |
  \clef treble
  r8 a16( cis f8) f-. r c16( e gis8) gis-. | r8 b,16( dis g8) g-. r d16( fis ais8) ais-. | 
  r8 cis,16( f a8) a-. r e16( gis c8) c-. | d8.-- e16( c d c d) ais8.-- c16( gis ais gis ais) |
  d,8-. fis16( gis ais8) gis-. fis16( e fis e d8) e-. | fis( ais d) d( c4 gis) |
  c8( d ais8. fis16) gis8( ais fis8. d16) | fis16( ais fis ais c8.) ais16( fis16 e fis16 e d4) |
  fis8( gis e8. c16) d8( e c8. gis16) | c16( e c e fis8.) e16( c16 ais c16 ais gis8) r |
  b16( ais b ais g8) r g16( fis g fis e8) r | \clef bass \once \override Slur.positions = #'(-2.5 . -2.5) c16( b c b c4) r2 |
  \fine
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \right
    \new Dynamics \dynamics
    \new Staff = "left" \left
  >>
  \layout { }
}
