global = {
	\time 4/4
	\key d \major
}

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
