global = {
	\time 4/4
	\key g \major
}

dynamicsT = \relative c' {
	\override DynamicLineSpanner.staff-padding = #3

	s1\f  | s1 | s1   | s1 |
	s1\mp | s1 | s1\f | s1 |

	\bar ".|:"

	\repeat volta 2 {
		s1\mf | s1 | s1 | s1            |
		s1    | s1 | s1 | s4 s4\mf s2\< |	s2\! s2\> |
		s1\f | s1 | s1 | s1 | s4. s8\ff s2
		\bar ":|."
	}
}

dynamicsB = \relative c' {
	\override DynamicLineSpanner.staff-padding = #3

	s1\f  | s1 | s1   | s1 |
	s1\mp | s1 | s1\f | s1 |

	\bar ".|:"

	\repeat volta 2 {
		s1\p | s1 | s1 | s1            |
		s1    | s1 | s1 | s4 s4\mf s2\< |	s2\! s2\> |
		s1\f | s1 | s1 | s1 | s4. s8\ff s2
		\bar ":|."
	}
}


tOne = \relative c' {
	\autoBeamOff
	\override DynamicLineSpanner.staff-padding = #3

	b4 g8. a16 b4 c4 |
	b4 a8. a16 b4 s4 |
	d4 b8.[ c16] d4 g8. e16 |
	d4 g,8. c16 b4( a4) |

	b4 g8. a16 b4 c8. c16 |
	b4 a4 g4 s4 |
	g'4 g4 fis4 e8. e16 |
	d4 cis8. cis16 d4 s4 |

	\bar ".|:"

	\repeat volta 2 {
		d2\p c2 |
		b4. c8 d4 r4 |
		fis2 e4( d4) |
		g4. b,8 d4 r4 |

		d2 c2 |
		b4. c8 d4 r4 |
		g4. a,8 b4 cis4 |
		d4 d8 d8 es4 es8 es8 |
		e4 e8 e8 fis2 |

		g4.-> g8 g4 e8 e8 |
		d4 c8 c8 b2 |
		e4. e8 d4 g,8. g16 |
		b2 a4 a4 |
		g4 s8 g'8 g4 s4

		\bar ":|."
	}
}

tTwo = \relative c' {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0
	\override DynamicLineSpanner.staff-padding = #3

	g4 g8. g16 g4 g4 |
	g4 fis8. fis16 g4 r4 |
	b4 g8.[ a16] b4 e8. c16 |
	b4 g8. g16 g4( fis4) |

	g4 g8. g16 g4 g8. g16 |
	g4 fis4 e4 r4 |
	a4 cis4 d4 b8. b16 |
	a4 a8. a16 a4 r4 |

	\bar ".|:"

	\repeat volta 2 {
		a4 a4 a4 a4 |
		g4 g4 b4 b4 |
		c4 c4 c4 c4 |
		b4 b4 b4 b4 |

		a4 a4 a4 a4 |
		g4 g4 g4 b4 |
		a4 a4 a4 a4 |
		a4 a8 a8 bes4 bes8 bes8 |
		b4 b8 b8 d2 |

		d4. d8 e4 c8 c8 |
		b4 a8 a8 g2 |
		g4. a8 b4 g8. g16 |
		g2 fis4 fis4 |
		g4 r8 b8 b4 r4

		\bar ":|."
	}
}

bOne = \relative c {
	\autoBeamOff
	\override DynamicLineSpanner.staff-padding = #3

	d4 b8. c16 d4 e4 |
	d4 d8. d16 d4 s4 |
	g4 g4 g4 g8. g16 |
	g4 g8. e16 d2 |

	d4 b8. c16 d4 e8. e16 |
	d4 fis4 g4 r4 |
	e4 a4 a4 g8. g16 |
	fis4 e8. g16 fis4 s4 |

	\bar ".|:"

	\repeat volta 2 {
		fis4 fis4 fis4 fis4 |
		d4 d4 d4 g4 |
		d4 a'4 g4 fis4 |
		d4 d4 g4 g4 |

		fis4 fis4 fis4 fis4 |
		d4 d4 d4 d4 |
		cis4 cis4 d4 e4 |
		fis4 fis8 fis8 g4 g8 g8 |
		gis4 gis8 gis8 a2 |

		g4. g8 g4 g8 g8 |
		g4 g8 fis8 g2 |
		g4. g8 g4 d8. e16 |
		d2 d4 c4 |
		b4 s8 d8 d4 s4

		\bar ":|."
	}
}

bTwo = \relative c {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0
	\override DynamicLineSpanner.staff-padding = #3

	g4 g8. g16 g4 g4 |
	d'4 d8. d16 g,4 r4 |
	g4 g4 g'4 c,8. e16 |
	g4 e8. c16 d2 |

	g,4 g8. g16 g4 g8. g16 |
	d'4 dis4 e4( d4) |
	cis4 a4 d4 g,8. g16 |
	a4 a8. a16 d4 r4 |

	\bar ".|:"

	\repeat volta 2 {
		d4 d4 d4 d4 |
		g,4 g4 g4 g4 |
		d'4 d4 d4 d4 |
		g,4 g4 g4 g4 |

		d'4 d4 d4 d4 |
		g,4 a4 b4 g4 |
		a4 a4 a4 a4 |
		d4 d8 d8 d4 d8 d8 |
		d4 d8 d8 d4( c4) |

		b4._> b8 c4 c8 c8 |
		d4 d8 dis8 e2 |
		e4. e8 d4 b8. c16 |
		d2 d4 d4 |
		g,4 r8 g8 g4 r4

		\bar ":|."
	}
}
