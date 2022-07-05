% LilyBin
\version "2.22.2"

\header {
	tagline = ##f
}

\paper {
	line-width = 175
	top-margin = 25
	bottom-margin = 30
	system-system-spacing.padding = #4
	print-all-headers = ##t
	print-page-number = ##f
	page-count = #1
}

#(set-global-staff-size 17)

global = {
	\key a \major
	\time 4/4
}

\include "../Include/midiVolume.ly"

%SANGERHILSEN

system = \relative c' {

	s1\f | s1 | s8. s16\< s4 s2\! | s1 |
	s1 | s1| s1 | s1 |
	s1\p | s2. s4\fp | s4 s2.\cresc | s2.\f-\< s4\! |
	s1 | s4 s2. | s1 | s1
	 \bar "|."
}

tOne = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\autoBeamOff

	a4.-> a8 a4 \tuplet 3/2 {a,8[( cis8 e8)]} |
	a4-> a4-> a4-> a4-> |
	a8.-> a16 a8 a8 b4.-> b8 |
	cis2->~ cis8 r8 r4 | \break

	cis4.-> cis8 cis4 \tuplet 3/2 {cis,8[( e8 gis8])} |
	cis4-> cis4-> cis4-> cis4-> |
	cis8.-> cis16 cis8 cis8 dis4.-> dis8 |
	e2->~ e8 r8 r4 | \break

	b4.-> b8-. cis4-. b4-. |
	a8.-. cis16 b4-. r4  e,4->~ |
	e8. e16 gis8 b8 d4.-> d8 |
	fis2. r4 | \break

	e1~ |
	e4 f4->^\markup{\italic{più \dynamic f}} fis4-> g4-> |
	gis2->( fis4->) \once \override NoteColumn.force-hshift = #0.6 e4-> |
	a2.-> r4
}

tTwo = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\autoBeamOff

	a4. a8 a4 \tuplet 3/2 {a,8[( cis8 e8)]} |
	a4 a4 a4 gis4 |
	fis8. fis16 fis8 fis8 a4. a8 |
	a2->~ a8 r8 r4 |

	cis4. cis8 cis4 \tuplet 3/2 {cis,8[( e8 gis8])} |
	cis4 cis4 cis4 b4 |
	a8. a16 a8 a8 cis4. cis8 |
	cis2~ cis8 r8 r4 |

	gis4. gis8 a4 gis4 |
	a8. a16 gis4 r4  e4~ |
	e8. e16 gis8 b8 d4. d8 |
	dis2. r4 |

	d1~ |
	d4 d4 d4 d4 |
	d2. 	\once \override NoteColumn.force-hshift = #-0.6 <e d>4 |
	<e cis>2. r4
}

bOne = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\autoBeamOff

	a4. a8 a4 \tuplet 3/2 {a,8[( cis8 e8)]} |
	a4 gis4 fis4 e4 |
	d8. d16 d8 d8 fis4. fis8 |
	e2~ e8 r8 r4 | \break

	cis'4. cis8 cis4 \tuplet 3/2 {cis,8[( e8 gis8])} |
	cis4 b4 a4 gis4 |
	fis8. fis16 fis8 fis8 a4. a8 |
	gis2~ gis8 r8 r4 | \break

	e4. e8 e4 e4 |
	e8. e16 e4 r4  e4~ |
	e8. e16 e8 gis8 a4. a8 |
	c2. r4 | \break

	b4( e4 d4 cis4 |
	b4) b4 b4 b4 |
	b2( a4) gis4 |
	a2. r4
}

bTwo = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\autoBeamOff

	a4.-> a8 a4 \tuplet 3/2 {a,8[( cis8 e8)]} |
	a4-> gis4-> fis4-> e4-> |
	d8.-> d16 d8 d8 d4.-> d8 |
	a2->~ a8 r8 r4 | \break

	cis'4.-> cis8 cis4 \tuplet 3/2 {cis,8[( e8 gis8])} |
	cis4-> b4-> a4-> gis4-> |
	fis8.-> fis16 fis8 fis8 fis4.-> fis8 |
	cis2~ cis8 r8 r4 | \break

	d4. d8 d4-. d4-. |
	cis8.-. a16 e'4-. r4  e4->~ |
	e8. e16 e8 e8 fis4. fis8 |
	a2. r4 | \break

	gis4( cis4 b4 a4 |
	gis4) g4->_\markup{\italic{più \dynamic f}} fis4-> f4-> |
	e2.-> e4-> |
	<e a,>2. r4
}

LyricToneOne = \lyricmode {
}

LyricToneTwo = \lyricmode {
}

LyricToneThree = \lyricmode {
}

LyricTtwoOne = \lyricmode {
	\set stanza = #"1."
	Lad os hvirv -- le Vel -- komst -- san  -- gen,
	Brød -- re, mod det gla -- de Tog!
	To -- ne højt paa mær -- ke  -- stan  -- gen
	Har -- pen i dens e -- get Sprog!

	Let på Fo  -- den lys  i  Sind,
	San -- ger -- færd,  drag ind,  drag ind!
	San -- ger -- færd,  drag ind,  drag ind!
}

LyricTtwoTwo = \lyricmode {
	\set stanza = #"2."
	Ung -- doms -- sang er kjæk --  kest Sej -- ler,
	To - - nen \once \override LyricText.self-alignment-X =  #LEFT vugger_som en¹ Sø.

	Ung -- doms --  sang er gla  --  dest Bej -- ler,
	To -- nen er en dej -- lig Mø.

	Svul -- men --  de for Som -- mer --  vind,
	San -- ger -- baad, glid  ind, glid ind!
	San -- ger -- baad, glid  ind, glid  ind!

}

LyricTtwoThree = \lyricmode {
	\set stanza = #"3."
	Syng  dig sam --  men, San -- ger -- ska -- re,
	\markup{\musicglyph #"rests.2"} \skip 1 i et e  -- nigt Tonevæld!²

	In -- den spredt I at  -- ter fa --  re,
	\markup{\musicglyph #"rests.2"} \skip 1  vil vi smel  -- te Sjæl_i_Sjæl!³

	Der -- for til vor To -- ne -- fest,
	San --  ger -- flok, vel mødt som bedst!
	San --  ger -- flok, vel mødt som bedst!
}

LyricBone = \lyricmode {

}

LyricBtwoOne = \lyricmode {
}

LyricBtwoTwo = \lyricmode {
}

LyricBtwoThree = \lyricmode {
}

%SANGERHILSEN

\score { % centered <<

	\header {
		title = "Sangerhilsen"
		composer = "Edvard Grieg"
		text = "Sigvard Skavlan"
	}

	\new ChoirStaff <<
		\new Staff = "tenor" <<
			\global
			\clef "treble_8"
			\new Voice = "system" <<
				\dynamicUp
				\system
			>>
			\new Voice = "tOne" <<
				\voiceOne
				\tOne
			>>
			\new Voice = "tTwo" <<
				\voiceTwo
				\tTwo
			>>
			\new Lyrics \with {alignAboveContext = "tenor"} {
				\lyricsto "tOne"
				\LyricToneOne
			}
			\new Lyrics \with {alignAboveContext = "tenor"} {
				\lyricsto "tOne"
				\LyricToneTwo
			}
			\new Lyrics \with {alignAboveContext = "tenor"} {
				\lyricsto "tOne"
				\LyricToneThree
			}
			\new Lyrics {
				\lyricsto "tTwo"
				\LyricTtwoOne
			}
			\new Lyrics {
				\lyricsto "tTwo"
				\LyricTtwoTwo
			}
			\new Lyrics {
				\lyricsto "tTwo"
				\LyricTtwoThree
			}
		>>
		\new Staff = "bass" <<
			\global
			\clef "bass"
			\new Voice = "system" <<
				\dynamicDown
				\system
			>>
			\new Voice = "bOne" <<
				\voiceOne
				\bOne
			>>
			\new Voice = "bTwo" <<
				\voiceTwo
				\bTwo
			>>
			\new Lyrics \with {alignAboveContext = "bass"} {
%				\lyricsto "bOne"
%				\LyricBone
			}
			\new Lyrics {
				\lyricsto "bTwo"
				\LyricBtwoOne
			}
			\new Lyrics {
				\lyricsto "bTwo"
				\LyricBtwoTwo
			}
			\new Lyrics {
				\lyricsto "bTwo"
				\LyricBtwoThree
			}
		>>
	>>
	\layout {
		\context {
			\Score
			\override SpacingSpanner.uniform-stretching = ##t
		}
		\context {
			\Lyrics
			\override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 2) (minimum-distance . 2) (padding . 2))
			\override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #1.5
		}
	}
}  % End score

\include "../Include/midiSangerhilsen.ly"
\markup {
	\small{
		\column{
			\line{
				\concat {¹
				\italic "Tonen vugger som en"} ska sjungas som:
				\note-by-number #2 #1 #1.0
				\note-by-number #3 #0 #1.0
				\note-by-number #3 #1 #1.0
				\note-by-number #4 #0 #1.0
				\note-by-number #3 #0 #1.0
				\note-by-number #3 #0 #1.0
			}
			\line{
				\concat {²
				\italic "Tonevæld"} ska sjungas som:
				\note-by-number #3 #1 #1.0
				\note-by-number #4 #0 #1.0
				\note-by-number #2 #0 #1.0
			}
			\line{
				\concat {³
				\italic "Sjæl i Sjæl"} ska sjungas som:
				\note-by-number #3 #1 #1.0
				\note-by-number #4 #0 #1.0
				\note-by-number #2 #0 #1.0
			}
		}
	}
}
