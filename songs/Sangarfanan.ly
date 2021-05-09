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
	\time 4/4
	\key d \major
}

%SÅNGARFANAN

dynamics = \relative c' {
	\override DynamicLineSpanner.staff-padding = #3

	s1\f | s1 | s | s |
	s1\f | s1 | s | s |

	s1\mf | s1 |
	s\cresc | s |

	s1\f | s1 | s | s |
	s1 | s4 s2\ff s4
	\once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
	\once \override Score.RehearsalMark.self-alignment-X = #RIGHT
	\mark \markup { \italic { \bold { \fontsize #-2 "Fine"}}}
	\bar "||" \break

	s1\mf | s1 | s1\f\> | s1\!
	s1\mf | s1 | s1 | s1 |

	s1\p | s1 | s1\f | s2\> s2\!
	s1\p | s1 | s2. s4\pp | s2. s4 |

	\once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
	\once \override Score.RehearsalMark.self-alignment-X = #RIGHT
	\mark \markup { \italic { \bold { \fontsize #-2 "D.C. al Fine"}}}
	\bar "|."
}

tOne = \relative c' {
	\set beamExceptions = #'()
	\set beatStructure = #'(1 1 1 1)

	a4 a a a | fis'4. e8 e4 d4 | cis4.. d16 e8. d16 cis8. d16 | e4 a,4 s2 |
	fis'4 fis fis fis | fis4. fis8 fis4 e4 | d4.. cis16 b8. cis16 d8. b16 | cis4 fis,4 s2 |

	cis'4. cis8 cis8 d16( cis) b8 cis | d4 e4 fis2 |
	dis4. dis8 dis8 e16( dis) cis8 dis | e4 fis4 g2 |

	g4.-> g8 g g g g |
	\autoBeamOff
	g4 fis fis e | e d d cis | d8. fis16 a2~ a8. fis16 |
	fis4 e d cis | d s8. d16 d4 s4 \bar "||"

	\autoBeamOn
	\key g \major

	d2 g4. fis8 | fis4 e d s4 | e8. d16 c4 d8. c16 b4 | d4. b8 a4 s4 |
	d2 g4. fis8 | fis4 e a4. g8 | fis8. e16 d4 s4 fis4 | g2. s4 |

	d2 g4. fis8 | fis4 e d s4 | e8. d16 c4 d8. c16 b4 | d4. b8 a4 s4 |
	d2 g4. fis8 | fis4 e a4 s8. g16 | fis8. e16 d4 s4 fis4 | g2. s4 |

	\bar "|."
}

tTwo = \relative c' {
	\set beamExceptions = #'()
	\set beatStructure = #'(1 1 1 1)

	a4 a a a | a4. a8 a4 a4 | a4.. a16 a8. a16 a8. a16 | cis4 a4 b2\rest |
	fis'4 fis fis fis | d4. d8 cis4 cis4 | b4.. fis16 d8. fis16 b8. b16 | ais4 fis4 b2\rest |

	a4 a a a | a4 cis4 a2 |
	b4 b b b | b4 dis4 b2 |

	cis4. cis8 cis cis b a |
	\autoBeamOff
	a4 a b b | a a g g | fis g8.\rest d'16 fis4~ fis8. d16 |
	d4 cis a g | fis b8.\rest a16 a4 b4\rest \bar "||"

	\autoBeamOn
	\key g \major

	b2 d4. d8 | c4 c b b4\rest | b8. b16 a4 a8. a16 g4 | b4. g8 fis4 b4\rest |
	b2 d4. d8 | c4 c c4. c8 | c8. c16 c4 b4\rest c4 | b4. b8 b4 b4\rest |

	b2 d4. d8 | c4 c b b4\rest | b8. b16 a4 a8. a16 g4 | b4. g8 fis4 b4\rest |
	b2 d4. d8 | c4 c c4 b8.\rest c16 | c8. c16 c4 b4\rest c4 | b4. b8 b4 b4\rest |

	\bar "|."
}

bOne = \relative c' {
	\set beamExceptions = #'()
	\set beatStructure = #'(1 1 1 1)


	a4 a a a | a4. g8 g4 fis4 | g4.. fis16 e8. fis16 g8. fis16 | e4 a4 r2 |
	fis4 fis fis fis | b4. b8 fis4 fis4 | fis4.. fis16 fis8. fis16 fis8. fis16 | fis4 fis4 s2 |

	g4 g g g | fis4 g4 fis2 |
	a4 a a a | g4 a4 g2 |

	a4. a8 a cis, d e |
	\autoBeamOff
	d4 d g g | fis fis e e | d s4 s8. a'16 d8. a16 |
	a4 g fis e | d s8. fis16 fis4 s4 \bar "||"

	\autoBeamOn
	\key g \major

	g2 g4. g8 | g4 g g s4 | gis8. gis16 a4 fis8. fis16 g4 | g4 d d4 s4 |
	g2 g4. g8 | g4 g a4. a8 | a8. g16 fis4 s4 a4 | g4. g8 g4 s4 |

	g2 g4. g8 | g4 g g s4 | gis8. gis16 a4 fis8. fis16 g4 | g4 d d4 s4 |
	g2 g4. g8 | g4 g a4 s8. a16 | a8. g16 fis4 s4 a4 | g4. g8 g4 s4 |

	\bar "|."
}

bTwo = \relative c {
	\set beamExceptions = #'()
	\set beatStructure = #'(1 1 1 1)

	a4 a a a | d4. d8 d4 d4 | e4.. d16 cis8. d16 e8. d16 | a4( cis8. e16 a4) g |
	fis4 fis fis fis | b,4. b8 ais4 ais4 | b4.. b16 b8. b16 b8. d16 | fis4 fis,4 d'2\rest |

	e4 a, e' a, | d4 a4 d2 |
	fis4 b, fis' b, | e4 b4 e2 |

	e4.-> e8 e a, b cis |
	\autoBeamOff
	d4 d g, g | a a a a | d d4\rest d8.\rest a'16 d8. a16 |
	a4 a, a a | d d8.\rest d16 d4 d4\rest \bar "||"

	\autoBeamOn
	\key g \major

	g,2 b4. b8 | c4 c g' d4\rest | e8. e16 a4 d,8. d16 g4 | g,4 b d4 d4\rest |
	g,2 b4. b8 | c4 c a4. a8 | d8. d16 d4 d4\rest d4 | g4. g,8 g4 d'4\rest |

	g,2 b4. b8 | c4 c g' d4\rest | e8. e16 a4 d,8. d16 g4 | g,4 b d4 d4\rest |
	g,2 b4. b8 | c4 c a4 d8.\rest a16 | d8. d16 d4 d4\rest d4 | g4. g,8 g4 d'4\rest |

	\bar "|."
}

tOneLyric = \lyricmode {
	\repeat unfold 32 {\skip 1}

	Fram -- åt brö -- der på vår mun -- tra stråt.
	Sång -- er, vin och gläd -- je föl -- jas åt.

	\repeat unfold 14 {\skip 1}

	sång, hur -- ra!

	\repeat unfold 33 {\skip 1}

	vårt tåg!

	\repeat unfold 25 {\skip 1}

	min hamn.
}

tTwoLyric = \lyricmode {
	Sån -- gar -- fa -- nan å -- ter hö -- jes. Högt mot him -- lens blå -- a sa -- lar;
	Gläd -- je i vart ö -- ga rö -- jes. Sån -- gens ton till hjär -- tat ta -- lar.

	Fram -- åt på vår mun -- tra stråt.
	Sång och gläd -- je föl -- jas åt.

	Ut bland sko -- gar, sjö och berg och da -- lar.
	Lju -- de friskt vår sång hur -ra!
	ja, lju -- de friskt vår sång, hur -- ra!

	Fjär -- ran på grön -- klädd kust. Vi med lust prö -- va må dru -- vans must!
	Styr då med glät -- tig håg. Dit -- åt vårt tåg, vårt gla -- da tåg!

	Gråt ej du fag -- ra mö! Ö -- gats eld, kin -- dens ros får ej dö!
	Snart i din hul -- da famn. Jag sö -- ker hamn. min lug -- na hamn.
}

bOneLyric = \lyricmode {
	\repeat unfold 61 {\skip 1}

	hur -- ra!
}

bTwoLyric = \lyricmode {
	\repeat unfold 14 {\skip 1}

	sa -- lar;
}


%SÅNGARFANAN

\score { % centered <<
	\header {
		title = "Sångarfanan"
		composer = "F. A: Frieberg"
	}

	\new ChoirStaff <<
		\new Staff = "tenor" <<
			\global
			\clef "treble_8"
			\new Voice = "tOne" <<
				\voiceOne
				\tOne
			>>
			\new Voice <<
				\dynamicUp
				\voiceOne
				\dynamics
			>>
			\new Voice = "tTwo" <<
				\voiceTwo
				\tTwo
			>>
		>>
		\new Lyrics \with { alignAboveContext = "tenor" }  {
			\lyricsto "tOne"
			\tOneLyric
		}
		\new Lyrics  {
			\lyricsto "tTwo"
			\tTwoLyric
		}
		\new Staff = "basses" <<
			\global
			\clef "bass"
			\new Voice = "bOne" <<
				\voiceOne
				\bOne
			>>
			\new Voice = "bTwo" <<
				\voiceTwo
				\bTwo
			>>
			\new Voice <<
				\voiceTwo
				\dynamics
			>>
		>>
		\new Lyrics \with { alignAboveContext = "basses" }  {
			\lyricsto "bOne"
			\bOneLyric
		}
		\new Lyrics  {
			\lyricsto "bTwo"
			\bTwoLyric
		}
	>>
	\layout {
		\context {
			\Score
			\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/2)
%			beatStructure = #'(2 2 2 2)
		}
		\context {
			\Lyrics
			\override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1.5
			\override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #1.5
		}
	}
}  % End score
