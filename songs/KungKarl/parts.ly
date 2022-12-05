global = {
	\key bes \major
	\time 4/4
}
\noPageBreak

system = \relative c' {
	\partial 4
	\autoPageBreaksOff

	s4\ff |
	s1 | s1 | s1 | \break s2. s4\f |
	s1 | s2. s4\ff| s1 | s2. s4\f |
	s1 | s1 | s1 | s1 |
	s1 | \pageBreak s1 | s1 | s2. s4\p |

	s1 | s1 | s1 | s2. s4\ff |
	s1 | s1 | s1 | s2. \bar "|."
}

tOne = \relative c' {
%	\override Voice.Rest #'staff-position = #0
	\autoBeamOff
	\partial 4

	f,4 |
	d'4. d8 es4. c8 |
	bes8[ d8] f,4 r8 \once \override DynamicText.X-offset = #-4 f'8^\mf d8 bes8 |
	f2. a4 |
	bes4 \once \override Voice.Rest #'staff-position = #0 r4 \once \override Voice.Rest #'staff-position = #0 r4 f4 |

	d'4. d8 es4. es8 |
	d4 c4 \once \override Voice.Rest #'staff-position = #0 r4 c4 |
	c4. c8 e4. e8 |
	f2 \once \override Voice.Rest #'staff-position = #0 r4 f,4 |

	c'4-. es4-. d4-. f4-. |
	f8[ d8] bes4 \once \override Voice.Rest #'staff-position = #0 r4 d4 |
	es4 d4 c4 g'4 |
	f2 r4 f,4^\f |

	bes2~ bes8. d,16 es8. f16 |
	g4 es4 r4 g4 |
	es'2~ es8. d16 c8 bes8 |
	a4 f4 \once \override Voice.Rest #'staff-position = #0 r4 f'4 |

	f2 d4. es8 |
	f4 g4 f4. es8 |
	d4. es8 d4 c4 |
	bes2 \once \override Voice.Rest #'staff-position = #0 r4 f'4 |

	f2 d4. es8 |
	f4 g4 f4. es8 |
	d4. es8 d4 c4 |
	\set Timing.measureLength = #(ly:make-moment 3/4)
	bes2 \once \override Voice.Rest #'staff-position = #0 r4 |
}

tTwo = \relative c' {
%	\override Voice.Rest #'staff-position = #0
	\partial 4
	\autoBeamOff

	f,4 |
	f4. bes8 a4. a8 |
	f4 d4 r2 |
	r8 d'8\mf c8 bes8 a8[ g8] f8[ es8] |
	d4 \once \override Voice.Rest #'staff-position = #0 r4 \once \override Voice.Rest #'staff-position = #0 r4 f4 |

	f4. bes8 bes4. bes8 |
	bes4 bes4 \once \override Voice.Rest #'staff-position = #0 r4 bes4 |
	a4. a8 bes4. bes8 |
	a2 \once \override Voice.Rest #'staff-position = #0 r4 f4 |

	a4 c4 bes4 a4 |
	bes8[ d8] bes4 \once \override Voice.Rest #'staff-position = #0 r4 bes4 |
	a4 bes4 g4 bes4 |
	a2 r2 |

	r4 r8 bes8\f bes8. bes16 bes8. bes16 |
	bes4 g4 r2 |
	r2 r4. e'8 |
	f4 f,4 \once \override Voice.Rest #'staff-position = #0 r4 d'4 |

	d2 bes4. c8 |
	d4 es4 d4. c8 |
	bes4. c8 bes4 a4 |
	bes2 \once \override Voice.Rest #'staff-position = #0 r4 d4 |

	d2 bes4. c8 |
	d4 es4 d4. c8 |
	bes4. c8 bes4 a4 |
	\set Timing.measureLength = #(ly:make-moment 3/4)
	bes2 \once \override Voice.Rest #'staff-position = #0 r4 |
}

bOne = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\partial 4
	\autoBeamOff

	f,4 |
	f4. f8 f4. f8 |
	f4 f4 r2 |
	s4. d8 f8 es8 d8 c8 |
	bes4 r4 r4 f'4 |

	f4. f8 g4. g8 |
	f4 g4 r4 g4 |
	f4. f8 g4. g8 |
	f2 r4 f4 |

	f4 a4 bes4 c4 |
	bes4 bes4 r4 bes4 |
	c4 bes4 c4 c4 |
	c2 r2 |

	s4. bes8 bes8. aes16 g8. f16 |
	es4 es4 r2 |
	s4. c8 c'8. bes16 a8 a8 |
	f4 f4 r4 bes4 |

	bes2 bes4. bes8 |
	bes4 bes4 bes4. a8 |
	bes4. g8 f4 f4 |
	d2 r4 bes'4 |

	bes2 bes4. bes8 |
	bes4 bes4 bes4. a8 |
	bes4. g8 f4 f4 |
	\set Timing.measureLength = #(ly:make-moment 3/4)
	d2 r4 |
}

bTwo = \relative c' {
	\autoBeamOff
	\override Voice.Rest #'staff-position = #0
	\partial 4

	f,4 |
	bes,4. bes8 f'4. f8 |
	d4 bes4 r2 |
	r4. \once \override DynamicText.X-offset = #-4 d8\mf f8 es8 d8 c8 |
	bes4 r4 r4 f'4 |

	bes,4. bes'8 g4. g8 |
	f4 e4 r4 e4 |
	f4. f8 c4. c8 |
	f2 r4 f4 |

	f4 f4 f4 es4 |
	d4 g4 r4 g4 |
	fis4 g4 es4 e4 |
	f2 r2 |

	r4. \once \override DynamicText.X-offset = #-4 bes,8\f bes'8. aes16 g8. f16 |
	es4 es4 r2 |
	r4. c8 c'8. bes16 a8 a8 |
	f4 f4 r4 bes4 |

	bes,2 bes4. bes8 |
	bes4 bes4 bes4. f'8 |
	g4. es8 f4 f,4 |
	bes2 r4 bes'4 |

	bes,2 bes4. bes8 |
	bes4 bes4 bes4. f'8 |
	g4. es8 f4 f,4 |
	\set Timing.measureLength = #(ly:make-moment 3/4)
	bes2 r4 |
}
