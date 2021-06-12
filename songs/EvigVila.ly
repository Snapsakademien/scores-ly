% LilyBin
\version "2.18.2"

\header {
	tagline = ##f
}

\paper {
	line-width = 175
	top-margin = 25
	bottom-margin = 30
	system-system-spacing.padding = #6
	print-all-headers = ##t
	print-page-number = ##f
}

#(set-global-staff-size 17)

global = {
	\key es \major
}

%EVIG VILA

system = \relative c {

	s1 \noBreak
	\bar ".|:"

	\repeat volta 3 {
		\repeat unfold 1 { s1 \noBreak } \break
		\repeat unfold 2 { s1 \noBreak } \break
		\repeat unfold 2 { s1 \noBreak } \break
		\repeat unfold 2 { s1 \noBreak } \break
		\repeat unfold 2 { s1 \noBreak } \break
		\repeat unfold 1 { s1 }
		s2 \bar "" \break
		s2
		s1
	}
}

melody = \relative c' {
	\override Beam.breakable = ##t
	\override Voice.Rest #'staff-position = #0
	\compressFullBarRests
	\autoBeamOff


	R1^\markup{ Långsamt, andaktsfullt }

	\repeat volta 3 {
		g4.^\p g8 bes4 f4
		g4( as8) f8 d8([ f16. es32)] es4
		g4. g8 g4 g4
		c8.([ d16 es8]) fis,8 \grace fis16( g8) g8 as8. as16
		g8 es8 c8([ bes'16]) as16 g4( f8) r8

		c'8. as16 f8. f16 bes8. g16 es4
		a8. a16 es'8. es16 es16([ d16)] c16([ bes16)] bes16([ a16)] as8\fermata

		g4. g8 bes4 f4
		g4( as8) f8 d8([ f16. es32)] es4

		R1
		r2 r2
		R1
	}
}

melodyTurn = \relative c {
	\override Beam.breakable = ##t

	s1
	\repeat volta 3 {

		\repeat unfold 1 { s1 }

		s8 s8\turn s2.

		\repeat unfold 6 { s1 }

		s8 s8\turn s2.

		s1
		s1
		s1
	}

}

pianoRH = \relative c {
	\override Beam.breakable = ##t
	\override Voice.Rest #'staff-position = #0

	bes16(\p\< es16 g16 es16) c16( es16 f16 es16) bes16(\> es16 f16 es16) bes16( d16 f16 d16)\!

	\repeat volta 3 {
		bes16\pp es16 g16 es16   bes16 es16 g16 es16   bes16 f'16 as16 f16      bes,16 f'16 as16 f16
		bes,16 es16 g16 es16   c16 f16 as16 f16    as,16 bes16 d16 bes16   g16 bes16 es16 bes16
		r16 g16( es'16 g,16   es'16 g,16 es'16 g,16)   d'16( g,16 d'16 g,16   des'16 g,16 des'16 g,16)
		c16 g16 c16 g16       <fis' c>16 fis,16 <fis' c>16 fis,16   g16 b16 d16 g16   as,16 bes16 d16 as'16
		g,16 bes16 es16 g16   c,16 f16 as16 f16    bes,16 es16 g16 es16    bes16 d16 f16 bes16

		d,16 f16 c'16 f,16     d16 f16 ces'16 f,16  bes,16 es16 bes'16 es,16    bes16 es16 bes'16 es,16
		c16\< es16 a16 es16     ces16\> es16 as16 es16   bes16\! d16 as16 d16   bes16\p d16 <as' d, bes>8^\fermata
		bes,16(\pp es16 g16 es16)   bes16( es16 g16 es16)   bes16( f'16 as16 f16)      bes,16( f'16 as16 f16)
		bes,16( es16 g16 es16)   c16( f16 as16 f16)    as,16( bes16 d16 bes16)   g16( bes16 es16 bes16)

		d8( f16. es32) es4 e8(\cresc g16. f32) f4
		s2 s2
		s1
	}
}

pianoRHvoiceOne = \relative c {
	\override Beam.breakable = ##t
	\compressFullBarRests
	\dynamicUp

	s1

	\repeat volta 3 {
		\repeat unfold 6 { s1 }

		s2. s16 \once \hide Stem d16~ \once \hide Stem d8

		\repeat unfold 3 { s1 }

		g8( bes16. as32) as4 g8(\> c8   bes16 as16 g16 f16)
		\override Voice.Rest #'staff-position = #0
		f8\< es4\! <g d>16.( f32)  <f d bes as>4(\> <es bes g>8)\! r8
	}
}

pianoRHvoiceTwo = \relative c {
	\override Beam.breakable = ##t
	\compressFullBarRests

	s1

	\repeat volta 3 {
		\repeat unfold 6 { s1 }

		s2. bes8~ \once \hide Stem bes8\noBeam

		\repeat unfold 3 { s1 }

		s2 r8 c8~ c8  bes16 as16
		g16 bes16 ges16 a16   g16 bes16 as16 bes16   s2
	}
}

pianoLH = \relative c {
	\override Beam.breakable = ##t
	\override Voice.Rest #'staff-position = #0

	<es es,>4 <a, a,>4 <bes bes,>2

	\repeat volta 3 {
		<es es,>2 <d d,>2
		<es es,>4 as,4 bes4 es,4
		c'2 b4 bes4
		a4 as4 g4 f4
		es4 <as as,>4 <bes bes,>2

		<as' as,>2 <g g,>4( <ges ges,>4)
		<f f,>2 <bes, bes,>2\fermata
		es2 d2
		es4 as,4 bes4 es,4
		s1
		s2  e'16( g16 bes16 e,16   f16 f,16 g16 as16)
		bes8 ces8([ bes8)] bes8 es8[ bes8 es,8] r8
	}
}

pianoLHvoiceOne = \relative c' {
	\override Beam.breakable = ##t
	\compressFullBarRests

	s1

	\repeat volta 3 {
		\repeat unfold 9 { s1 }

		r16 as16 bes16 as16   r16 g16 bes16 g16   r16 bes16 c16 bes 16   r16 as16 c16 aes16
		r16 des16 es16 des16  r16 c16 es16 c16
		s2
		s1
	}
}

pianoLHvoiceTwo = \relative c {
	\override Beam.breakable = ##t
	\compressFullBarRests

	s1

	\repeat volta 3 {
		\repeat unfold 9 { s1 }

		bes4 es4 c4 f4
		es4 as4
		s2
		s1
	}
}

melodyLyricsOne = \lyricmode {
	Al -- la sjä -- lar frid ha vun -- nit
	som från jor -- de -- kva -- len hun -- nit
	hän till him -- lens lju -- sa land
	fjär -- ran till en o -- känd strand;
	dit vill tröt -- ta tan -- ken i -- la,
	där få al -- la sjä -- lar vi -- la.
}

melodyLyricsTwo = \lyricmode {
	Långt från jor -- dens bitt -- ra tå -- rar
	le där e -- vigt lju -- sa vå -- rar
	och där mö -- ter då på nytt
	dem som jor -- de -- li -- vet flytt
	och till mö -- tes vän -- ner i -- la,
	där få al -- la sjä -- lar vi -- la
}

melodyLyricsThree = \lyricmode {
	Var dig for -- dom lju -- set fjär -- ran,
	e -- vig blir din sol hos Her -- ran,
	e -- vigt, e -- vigt un -- der -- bart
	strå -- lar den på fäs -- tet klart.
	De, som en gång dit fått i -- la
	fin -- na al -- la e -- vig vi -- la
}

%EVIG VILA

\score {

	\header {
		title = "Evig vila"
		composer = "Franz Schubert"
	}
	\transpose c b, {
	<<
		\new ChoirStaff <<
			\new Staff <<
				\set Staff.instrumentName = #"Melodi"
				\new Voice {
					\global
					\system
				}
				\new Voice = "melody" {
					\global
					\clef "treble_8"
					\melody
				}
				\new Voice = "melodyTurn" {
					\voiceOne
					\melodyTurn
				}
			>> % End MelodyStaff
			\new Lyrics \lyricsto "melody" {
				\melodyLyricsOne
			}
			\new Lyrics \lyricsto "melody" {
				\melodyLyricsTwo
			}
			\new Lyrics \lyricsto "melody" {
				\melodyLyricsThree
			}
		>>  % End ChoirStaff

		\new PianoStaff <<
			\set PianoStaff.instrumentName = #"Piano "
			\new Staff <<
				\global
				\clef "treble_8"
				\new Voice = "system" <<
					\system
				>>
				\new Voice = "pianoRH" <<
					\pianoRH
				>>
				\new Voice = "pianoRHvoiceOne" <<
					\voiceOne
					\pianoRHvoiceOne
				>>
				\new Voice = "pianoRHvoiceTwo" <<
					\voiceTwo
					\pianoRHvoiceTwo
				>>
			>>
			\new Staff <<
				\global
				\clef "bass"
				\new Voice = "system" <<
					\system
				>>
				\new Voice = "pianoLH" <<
					\pianoLH
				>>
				\new Voice = "pianoLHvoiceOne" <<
					\voiceOne
					\pianoLHvoiceOne
				>>
				\new Voice = "pianoLHvoiceTwo" <<
					\voiceTwo
					\pianoLHvoiceTwo
				>>
			>>
		>>
	>>
	}

	\layout {
		\context {
			\Score
			\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/2)

		}
		\context {
			\Staff
%				\remove "Time_signature_engraver"
		}
	}
}  % End score
