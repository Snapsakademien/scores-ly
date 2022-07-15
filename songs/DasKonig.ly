% LilyBin
\version "2.22.2"

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
	page-count = #1
}

#(set-global-staff-size 17)

global = {
	\key d \major
	\time 4/4
}

\include "../Include/midiVolume.ly"

%DAS KÖNIGSLIED

system = \relative c' {
	\partial 4

	s4\f |
	s1 | s1 | s1 | s2. s4 |
	s1 | s1 | s1 | s2. s4\mf |
	s1 | s1 | s1 | s2. s4\ff |
	s1 | s1 | s2  s2\> | s2.\! \bar "|."
}

tOne = \relative c' {
	\set beamExceptions = #'()
	\set beatStructure = #'(1 1 1 1)
	\partial 4

	a4 |
	d4. d8 fis,4 g4 |
	a2 r4 d4 |
	fis2~ fis8 a,8 d8 fis8 |
	e2 \once \override Voice.Rest #'staff-position = #0 r4 a,4^\markup{\dynamic p \italic{dolce}} |

	a4 fis'8 e8  d4 cis8 b8 |
	a2 fis4 a4 |
	a4 fis'8 e8  d4 cis8 b8 |
	a2 fis4 fis4 |

	d'4 cis4 b4. cis8 |
	a4 \once \override Voice.Rest #'staff-position = #0 r4 \once \override Voice.Rest #'staff-position = #0 r4 e'4^\f |
	fis2^\fz d4 fis4 |
	a2-> fis4 d4 |

	d4. d8 d4 d4 |
	gis2.^\markup{\dynamic fz \italic{ten.}} gis4 |
	a4( fis8) d8 b4 cis4 |
	d2 \once \override Voice.Rest #'staff-position = #0 r4 \bar "|."
}

tTwo = \relative c' {
	\set beamExceptions = #'()
	\set beatStructure = #'(1 1 1 1)
	\partial 4

	a4 |
	d4. d8 fis,4 g4 |
	a4 a4 d2~ |
	d2~ d8 a8 a8 d8 |
	cis2 \once \override Voice.Rest #'staff-position = #0 r4 a4 |

	g4 g4  fis4 g4 |
	e8( g8 fis8 e8) d4 fis4 |
	g4 g4 fis4 g4 |
	e8( g8 fis8 e8) fis4 fis4 |

	b4 a4 a4 gis4 |
	a4 \once \override Voice.Rest #'staff-position = #0 r4 \once \override Voice.Rest #'staff-position = #0 r4 cis4 |
	ais2 b4 d4 |
	cis2 d4 d4 |

	d4. d8 d4 d4 |
	f2. f4 |
	fis4( d8) a8 gis4 g4 |
	fis2 \once \override Voice.Rest #'staff-position = #0 r4 \bar "|."
}

bOne = \relative c' {
	\set beamExceptions = #'()
	\set beatStructure = #'(1 1 1 1)
	\partial 4

	a4 |
	d4. d8 fis,4 g4 |
	a2 r4 fis4 |
	a2~ a8 a8 a8 a8 |
	a2 \once \override Voice.Rest #'staff-position = #0 r4 a4 |

	e4 cis4 d4 d4 |
	cis8( e8 d8  cis8) d4 d4 |
	e4 cis4 d4 d4 |
	cis8( e8 d8  cis8) d4 fis4 |

	fis4 fis4 fis4 e4 |
	a8 a8 e'8 cis8 a4 a4^\f |
	fis2. b4 |
	a2-> d4 d4 |

	d4. d8 d4 d4 |
	d2. d4 |
	d4( a8) fis8 eis4 e4 |
	d2 \once \override Voice.Rest #'staff-position = #0 r4 \bar "|."
}

bTwo = \relative c' {
	\set beamExceptions = #'()
	\set beatStructure = #'(1 1 1 1)
	\partial 4

	a4 |
	d4. d8 fis,4 g4 |
	a2 r2 |
	r4 a,4 a'8 a8 fis8 d8 |
	a2 \once \override Voice.Rest #'staff-position = #0 r4 a4_\markup{\dynamic p \italic dolce} |

	cis4 a4 d4 g,4 |
	a2 d4 d4 |
	cis4 a4 d4 g,4 |
	a2 d4 fis4 |

	b,4 cis4 d4 e4 |
	a,4 r4 r2 |
	r4 fis'4_\f b4 b,4 |
	r4  a'4 d4 d,8 d8 |

	d'4. d8 d4 d4 |
	bes2._\markup{\dynamic fz \italic ten.} bes4 |
	a4. a,8 a4 a4 |
	d2 \once \override Voice.Rest #'staff-position = #0 r4 \bar "|."
}

LyricToneOne = \lyricmode {
	\repeat unfold  6 {\skip 1}
	ein Kön_-
}

LyricToneTwo = \lyricmode {
	\repeat unfold  6 {\skip 1}
	som  dog
}

LyricTtwoOne = \lyricmode {
	\set stanza = #"1."

	Ein kö -- nig ist der Wein,
	en  Kö -- ig ist der Wein!
	Mit  Se  -- gen reich be  -- la  -- den ist er  von  Got -- tes Gna --  den,
	und man -- cher Pur  -- pur sein.
	in Kö -- nig, ein Kö  -- nig,
	ein Kö  -- nig ist  der Wein,
	ein Kö --nig ist  der Wein!
}

LyricTtwoTwo =  \lyricmode {
	\set stanza = #"2."

	Det var en gång en kung,
	som dog för fol -- kets väl.
	De sis -- ta ord han sa --  de
	när nä -- san  upp  han la -- de:
	var tu -- san är min själ?
	Var tu -- san, var  tu  -- san,
	var tu -- san är min själ?
	Var  tu -- san är min själ?
}

LyricBoneOne = \lyricmode {
	\repeat unfold 6 {\skip 1}
	ein Kö_-
	\repeat unfold  24 {\skip 1}
	Ein Kö -- nig ist der Wein, ein
}

LyricBoneTwo = \lyricmode {
	\repeat unfold 6 {\skip 1}
	som dog
	\repeat unfold  24 {\skip 1}
	Var tu -- san är min  själ, var
}

LyricBtwoOne = \lyricmode {
	\repeat unfold 6 {\skip 1}
	ein Kö_-
	\repeat unfold  24 {\skip 1}
	Ein Kö -- nig, ein  Kö --  nig, ein
}

LyricBtwoTwo = \lyricmode {
	\repeat unfold 6 {\skip 1}
	som dog
	\repeat unfold  24 {\skip 1}
	Var tu -- san var tu -- san, var
}


%DAS KÖNIGSLIED

\score { % centered <<

	\header {
		title = "Das Königslied"
		composer = "Adolf Eduard Marschner"
		text =  "Frans von Kobell"
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
				\lyricsto "bOne"
				\LyricBoneOne
			}
			\new Lyrics \with {alignAboveContext = "bass"} {
				\lyricsto "bOne"
				\LyricBoneTwo
			}
			\new Lyrics {
				\lyricsto "bTwo"
				\LyricBtwoOne
			}
			\new Lyrics {
				\lyricsto "bTwo"
				\LyricBtwoTwo
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

\include "../Include/midiDasKonig.ly"
