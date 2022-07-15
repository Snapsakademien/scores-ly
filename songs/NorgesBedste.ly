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
	\key b \minor
	\time 4/4
}

\include "../Include/midiVolume.ly"

%NORSKA HALVAN

system = \relative c' {

	s1\f | s1 | s1 | s1 | \break
	s4.\mf s4.\< s4\! | s2\> s2\! | s2\<  s2\! | s4\> s2.\! | \break
	s1 | s1\mf | s1 | s1 |
	s1 | \break s1\f | s1 | s1 |
	s1 | s1\< | s1\ff | s1 \bar "|."
}

tOne = \relative c {
	\override Voice.Rest #'staff-position = #0
	\override Voice.MultiMeasureRest #'staff-position = #0

	fis4. fis8 d4 b4 |
	b'4. b8 ais4 fis4 |
	fis'4. d8 b4 cis4 |
	d2. r4 |

	b4. b8 cis4 cis4 |
	cis4.( d8) cis4 r4 |
	d4. d8  fis8[ e8] d8[ e8] |
	fis4 d4 r2 |

	R1 |
	g4. g8 g4 fis4 |
	R1 |
	b,4. cis8 d4 a4 |

	R1 |
	fis'2. d4 |
	cis4.( d8 cis4) r4 |
	r2 fis,4 fis4 |

	b1~ |
	b2 cis2 |
	fis1~ |
	fis2 r2 \bar "|."
}

tTwo = \relative c {
	\override Voice.Rest #'staff-position = #0
	\override Voice.MultiMeasureRest #'staff-position = #0
	\set beamExceptions = #'()
	\set beatStructure = #'(1 1 1 1)

	fis4. fis8 d4 b4 |
	b'4. b8 ais4 fis4 |
	d'4. b8 fis4 ais4 |
	b2. r4 |

	b4. b8 b4 b4 |
	ais4.( b8) ais4 r4 |
	b4. b8 \once \hide Slur  d8[( cis8]) \once \hide Slur  b8[( cis8]) |
	d4 a4 r2 |

	R1 |
	d4. d8 d4 d4 |
	R1 |
	a4. a8 a4 a4 |

	R1 |
	d2. b4 |
	ais4.( b8 ais4) r4 |
	r2 fis4 fis4 |

	b1~ |
	b2 cis2 |
	dis1~ |
	dis2 r2 \bar "|."
}

bOne = \relative c {
	\override Voice.Rest #'staff-position = #0
	\override Voice.MultiMeasureRest #'staff-position = #4

	fis4. fis8 d4 b4 |
	b'4. b8 ais4 fis4 |
	b4. fis8 fis4 fis4 |
	fis2. r4 |

	g4. g8 g4 g4 |
	fis4.( f8) fis4 r4 |
	fis4. fis8  a4 a4 |
	a4 fis4 r2 |

	d'2^\markup{\right-align \italic "ben marc"} d,2 |
	b'2 a2 |
	a2 a,2 |
	g'2 fis2 |

	R1 |
	fis2. fis4 |
	fis4.( f8 fis4) r4 |
	r2 fis4 fis4 |

	fis1~ |
	fis2 ais2 |
	b1~ |
	b2 r2 \bar "|."
}

bTwo = \relative c {
	\override Voice.MultiMeasureRest #'staff-position = #-8

	fis4. fis8 d4 b4 |
	b'4. b8 ais4 fis4 |
	b,4. b8 d4 fis4 |
	b,2. s4 |

	g'4. g8 e4 e4 |
	e4.( dis8) e4 s4 |
	b4. b8  a4 a4 |
	d4 d4 s2 |

	R1 |
	d4. d8 d4 d4 |
	R1 |
	a4. a8 d4 d4 |

	fis2 fis2 |
	b,2. d4 |
	fis4.( f8 fis4) s4 |
	s2 fis4 fis4 |

	dis1~ |
	dis2 fis2 |
	<fis b,>1~ |
	<fis b,>2 s2 \bar "|."
}

LyricToneOne = \lyricmode {
}

LyricTtwo = \lyricmode {
	Nor  --  ges bäs -- ta sill i pap -- per,
	den har in --  ga  fjäll;

	Skönt den an -- dra da -- gen
	fröj -- dar gom -- men  ma -- gen

	flas --  kan op -- pe
	sis --  ta drop -- pe,
	i  dig häll!
	I  dig  hal -- van  häll!
}

LyricBone = \lyricmode {
	\repeat unfold 25 {\skip 1}
	Har du op -- pe,
	töm dess drop -- pe
}

LyricBtwoOne = \lyricmode {
	\repeat unfold 25 {\skip 1}
	flas --  kan op  -- pe
	sis  -- ta drop -- pe
	Hal --  van
}

%NORSKA HALVAN

\score { % centered <<

	\header {
		title = "Norska Halvan"
		composer = "Halfdan Kjerulf"
		text =  "okänd"
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
			\new Lyrics {
				\lyricsto "tTwo"
				\LyricTtwo
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
				\LyricBone
			}
			\new Lyrics {
				\lyricsto "bTwo"
				\LyricBtwoOne
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

\include "../Include/midiNorgesBedste.ly"
