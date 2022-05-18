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
	\key d \major
	\time 4/4
}

\include "../Include/midiVolume.ly"

%NATIONALSÅNGEN

system = \relative c' {
	\partial 8

	s4 |
	s1 | s1 | s1 | s1 |
	s1 | s1 | s1 | s1 |
	s1 |
	\set Timing.measureLength = #(ly:make-moment 7/8)
	s2. s8  \bar "|."
}

tOne = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\autoBeamOff
	\partial 8

	fis8 |
	fis4 d8 d8 d4 e8 fis8 |
	fis4 e8 d8 cis4 r8 e8 |
	e4 cis8 d8 e8 cis8 fis8 d8 |
	b2 a4 r8 a8 |

	d4 d8 e8 cis4 cis8 d8 |
	b8.[ a16] b8 cis8 a4 r8 a8 |
	d8. cis16 d8 e8 fis8 d8 g8 fis8 |
	e2 d4 r8 a8 |
	d8. cis16 d8 e8 fis8 d8 g8 fis8 |
	\set Timing.measureLength = #(ly:make-moment 7/8)
	e2 d4 r8  \bar "|."
}

tTwo = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\partial 8
	\autoBeamOff

	d8 |
	d4 a8 a8 b4 cis8 d8 |
	d4 b8 b8 a4 r8 e'8 |
	e4 cis8 d8 cis8 cis8 cis8 b8 |
	a4( gis4) a4 r8 a8 |

	d4 d8 e8 cis4 cis8 b8 |
	a4 gis8 gis8 e4 r8 a8 |
	d8. cis16 d8 cis8 d8 a8 d8 d8 |
	d4( cis4) a4 r8 a8

	d8. cis16 d8 e8 d8 d8 e8 d8 |
	\set Timing.measureLength = #(ly:make-moment 7/8)
	d4( cis4) a4 r8  \bar "|."
}

bOne = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\partial 8
	\autoBeamOff

	a8 |
	a4 fis8 fis8 fis4 fis8 fis8 |
	b4 gis8 e8 e4 r8 a8 |
	a4 a8 b8 b8 b8 ais8 fis8 |
	e2 a4 r8 a8 |

	a4 b8 b8 a4 a8 fis8 |
	e4 d8 d8 cis4 r8 a'8 |
	a8. a16 a8 a8 a8 fis8 g8 a8 |
	b4( a8[ g8]) fis4 r8 a8 |

	a8. a16 a8 a8 a8 b8 b8 a8 |
	\set Timing.measureLength = #(ly:make-moment 7/8)
	b4( a8[ g8]) fis4 r8  \bar "|."
}

bTwo = \relative c {
	\autoBeamOff
	\override Voice.Rest #'staff-position = #0
	\partial 8

	d8 |
	d4 d8 d8 b4 b8 b8 |
	g4 gis8 gis8 a4 r8 cis8 |
	cis4 a'8 a8 g8 g8 fis8 b,8 |
	e2 a4 r8 a8 |

	fis4 b8 gis8 a4 fis8 b,8 |
	e4 e8 e8 a,4 r8 a'8 |
	fis8. g16 fis8 e8 d8 c8 b8 a8 |
	g4( a4) d4 r8 a'8 |

	fis8. g16 fis8 cis8 d8 b'8 e,8 fis8 |
	\set Timing.measureLength = #(ly:make-moment 7/8)
	g4( a4) fis4 r8  \bar "|."

}

LyricToneOne = \lyricmode {

}

LyricTtwoOne = \lyricmode {
	\set stanza = #"1."
	Du gam -- la, du fri -- a, du fjäll -- hö -- ga nord,
	du tys -- ta, du gläd -- je -- ri -- ka skö -- na!
	Jag häl -- sar dig vä -- nas -- te land up -- på jord,
	din sol din him -- mel, di -- na äng -- der grö -- na,
	din sol, din him -- mel, di -- na äng -- der grö -- na.
}

LyricTtwoTwo = \lyricmode {
	\set stanza = #"2."
	Du tro -- nar på min -- nen från forn -- sto -- ra dar,
	då ä -- rat ditt namn flög ö -- ver jor -- den.
	Jag vet, att du är och du blir vad du var.
	Ja, jag vill le -- va, jag vill dö i nor -- den!
	Ja, jag vill le -- va, jag vill dö i nor -- den!
}

LyricBone = \lyricmode {

}

LyricBtwoOne = \lyricmode {

}

%NATIONALSÅNGEN

\score { % centered <<

	\header {
		title = "Du gamla, du fria"
		Arranger =  "Ivar Widén"
	}

	\new ChoirStaff <<
		\new Staff = "tenor" <<
			\global
			\clef "treble_8"
			\new Voice = "system" <<
%				\dynamicUp
%				\system
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
%				\lyricsto "tOne"
%				\LyricToneOne
			}
			\new Lyrics {
				\lyricsto "tTwo"
				\LyricTtwoOne
			}
			\new Lyrics {
				\lyricsto "tTwo"
				\LyricTtwoTwo
			}
		>>
		\new Staff = "bass" <<
			\global
			\clef "bass"
			\new Voice = "system" <<
%				\dynamicDown
%				\system
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
%				\lyricsto "bTwo"
%				\LyricBtwoOne
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

\include "../Include/midiNationalsangen.ly"
