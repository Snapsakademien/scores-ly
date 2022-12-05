global = {
	\key b \minor
	\time 4/4
}

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
