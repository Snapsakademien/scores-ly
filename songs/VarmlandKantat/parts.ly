global = {
	\time 4/4
	\key d \major
}

system = \relative c' {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0
	\partial 4

	s4\f
	s1 | s1 | s1 | s1 |
	s1\mf | s1 | s4\f s4\< s4 s4\! | s1\< |
	s2\ff s8 s4.\> | s1\!

	\bar "||"

	s1 | s1 | s4 s2.\> | s1\! |
	s2\mf-\< s2\! | s1 | s4\f s2\< s4\! | s1\< |
	s4\ff s2.\> | s1\!

	\bar "||"

	s2 s2\< | s2.\fff

	\bar "|."
}

tOne = \relative c' {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0
	\partial 4

	a4 |
	fis'4 \tuplet 3/2 {d8[ e8] fis8} g4 fis8. d16 |
	e8. e16 \tuplet 3/2 {e8 fis8 g8} g8 e8 \tuplet 3/2 {fis8 d8 e8} |
	fis4 g8. fis16 b,8 e8 fis8 e8 |
	d8[ b8] g'8[ e8] d4 cis4 |

	fis4 \tuplet 3/2 {d8[ e8] fis8} g4 fis8. d16 |
	e8. e16 \tuplet 3/2 {fis8. fis16 fis8} \tuplet 3/2 {a8 g8 fis8} \tuplet 3/2 {fis8 e8 r16 a,16} |
	d4 d8. d16 e8. fis16 e8 r16 e16 |
	eis4 eis8. eis16 fis8. g16 fis8 fis8 |

	<a fis>8 <a fis>8 g8 e8 d4( cis4) |
	d2. r4 |

	\bar "||"

	fis4 \tuplet 3/2 {d8[ e8] fis8} g4 fis8. d16 |
	e8. e16 \tuplet 3/2 {e8[ fis8] g8} g8 e8 \tuplet 3/2 {fis8 d8 e8} |
	fis4 g8. fis16 b,8 e8 fis8 e8 |
	d8[ b8] g'8 e8 d4 cis4 |

	fis4 \tuplet 3/2 {d8[ e8] fis8} g4 fis8. d16 |
	e8. e16 \tuplet 3/2 {fis4 fis8} \tuplet 3/2 {a8[ g8] fis8} \tuplet 3/2 {fis8 e8 r16 a,16} |
	d4 d8. d16 e8. fis16 e8 r16 e16 |
	eis4 eis8. eis16 fis8. g16 fis8 fis8 |

	<a fis>8 <a fis>8 g8 e8 d4( cis4) |
	d2. r4

	\bar "||"

	d4. d8 e4 e8. e16 |
	a2~ a4

	\bar "|."
}

tTwo = \relative c' {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0
	\partial 4

	a4 |
	d4 \tuplet 3/2 {d4 d8} d4 d8. d16 |
	d8. d16 \tuplet 3/2 {cis8 cis8 cis8} cis8 e8 \tuplet 3/2 {d8 d8 d8} |
	dis4 dis8. dis16 b8 b8 ais8 ais8 |
	b4 b4 a4 a4 |

	d4 \tuplet 3/2 {d4 d8} d4 d8. d16 |
	d8. d16 \tuplet 3/2 {d8. d16 d8} \tuplet 3/2 {d8 d8 d8} \tuplet 3/2 {cis8 cis8 r16 a16} |
	a4 a8. a16 d8. d16 d8 r16 d16 |
	d4 d8. d16 d8. d16 d8 d8 |

	dis8 dis8 e8 b8 a2 |
	a2. r4 |

	\bar "||"

	d4 \tuplet 3/2 {d4 d8} d4 d8. d16 |
	d8. d16 \tuplet 3/2 {cis4 cis8} cis8 e8 \tuplet 3/2 {d8 d8 d8} |
	dis4 dis8. dis16 b8 b8 ais8 ais8 |
	b4 b8 b8 a4 a4 |

	d4 \tuplet 3/2 {d4 d8} d4 d8. d16 |
	d8. d16 \tuplet 3/2 {d4 d8} \tuplet 3/2 {d4 d8} \tuplet 3/2 {cis8 cis8 r16 a16} |
	a4 a8. a16 d8. d16 d8 r16 d16 |
	d4 d8. d16 d8. d16 d8 d8 |

	dis8 dis8 e8 b8 a2 |
	a2. r4 |

	\bar "||"

	d4. d8 d4 d8. d16 |
	fis2~ fis4

	\bar "|."
}

bOne = \relative c' {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0
	\partial 4

	a4 |
	a4 \tuplet 3/2 {fis8[ g8] a8} b4 a8. a16 |
	b8. b16 \tuplet 3/2 {a8 a8 a8} a8 a8 \tuplet 3/2 {a8 fis8 g8} |
	a4 b8. a16 g8 g8 fis8 fis8 |
	fis8[ d8] e8[ g8] fis4 e4 |

	a4 \tuplet 3/2 {fis8[ g8] a8} b4 a8. a16 |
	b8. b16 \tuplet 3/2 {c8. c16 c8} \tuplet 3/2 {b8 b8 e,8} \tuplet 3/2 {a8 a8 r16 g16} |
	fis4 fis8. fis16 gis8. gis16 gis8 r16 gis16 |
	gis4 gis8. gis16 a8. b16 a8 a8 |

	b8 b8 b8 g8 fis4( e8[ g8]) |
	fis2. r4 |

	\bar "||"

	a4 \tuplet 3/2 {fis8[ g8] a8} b4 a8. a16 |
	b8. b16 \tuplet 3/2 {a4 a8} a8 a8 \tuplet 3/2 {a8 fis8 g8} |
	a4 b8. a16 g8 g8 fis8 fis8 |
	fis8[ d8] e8 g8 fis4 e4 |

	a4 \tuplet 3/2 {fis8[ g8] a8} b4 a8. a16 |
	b8. b16 \tuplet 3/2 {c4 c8} \tuplet 3/2 {b4 e,8} \tuplet 3/2 {a8 a8 r16 g16} |
	fis4 fis8. fis16 gis8. gis16 gis8 r16 gis16 |
	gis4 gis8. gis16 a8. b16 a8 a8 |

	b8 b8 b8 g8 fis4( e8[ g8]) |
	fis2. r4 |

	\bar "||"

	b4. b8 bes4 bes8. bes16 |
	<d a>2~ <d a>4

	\bar "|."
}

bTwo = \relative c' {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0
	\partial 4

	a4 |
	d,4 \tuplet 3/2 {d4 d8} d4 d8. fis16 |
	g8. g16 \tuplet 3/2 {g8 fis8 e8} e8 cis8 \tuplet 3/2 {d8 d8 d8} |
	b4 b8. b16 e8 d8 cis8 cis8 |
	b4 g4 a4 a4 |

	d4 \tuplet 3/2 {d4 d8} d4 d8. fis16 |
	g8. g16 \tuplet 3/2 {a8. a16 a8} \tuplet 3/2 {e8 e8 e8} \tuplet 3/2 {a,8 a8 r16 a16} |
	c4 c8. c16 b8. b16 b8 r16 b16 |
	bes4 bes8. bes16 a8. a16 a8 a8 |

	g8 g8 g8 g8 a2 |
	<d d,>2. r4 |

	\bar "||"

	d4 \tuplet 3/2 {d4 d8} d4 d8. fis16 |
	g8. g16 \tuplet 3/2 {g8[ fis8] e8} e8 cis8 \tuplet 3/2 {d8 d8 d8} |
	b4 b8. b16 e8 d8 cis8 cis8 |
	b4 g8 g8 a4 a4 |

	d4 \tuplet 3/2 {d4 d8} d4 d8. fis16 |
	g8. g16 \tuplet 3/2 {a4 a8} \tuplet 3/2 {e4 e8} \tuplet 3/2 {a,8 a8 r16 a16} |
	c4 c8. c16 b8. b16 b8 r16 b16 |
	bes4 bes8. bes16 a8. a16 a8 a8 |

	g8 g8 g8 g8 a2 |
	<d d,>2. r4 |

	\bar "||"

	g4. g8 <g g,>4 <g g,>8. <g g,>16 |
	<d d,>2~ <d d,>4

	\bar "|."
}
