global = {
	\key g \major
	\time 3/4
}

system = \relative c' {
	\autoBeamOff
	\override DynamicLineSpanner.staff-padding = #3

	s2.\p
	\repeat unfold 3 { s2. | }\break
	\repeat unfold 2 { s2. | }
	s2.\cresc |
	s2 s8 s8\f | \break
	\repeat unfold 2 { s2. | }

	s2.\p
	\repeat unfold 1 { s2. | } \break
	\repeat unfold 3 { s2. | } \break
	s2. |
	s2 s4\f |
	s2. |
	s2. \bar "|."
}

tOne = \relative c' {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0

	d4 d4 g4 |
	g8 fis8 fis2 |
	a8[ g8] fis8[ e8] d8[ fis8] |
	fis8 g8 g2 |

	g4 g4 g4 |
	fis2 fis4 |
	e8 e8 d4 cis4 |
	d2 r8 fis8 |

	e8 e8 d4 cis4 |
	d2 r4 |

	d8. d16 d4 d4 |
	d4 c4 r4 |
	e8. e16 e4 e4 |
	e4 d4 r4 |

	g8 fis8 g8 fis8 fis8 fis8 |
	g8 fis8 g8 fis8 fis8 fis8 |
	g4 fis4 e8 g8 |
	fis16[ e16] d16[ c16] b4 a4 |
	g2 r4
}

tTwo = \relative c' {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0

	b4 b4 d4 |
	d8 d8 d2 |
	fis8[ e8] d8[ c8] a4 |
	a8 g8 g2 |

	d'4 d4 d4 |
	d2 d4 |
	e,8 e8 a4 g4 |
	fis2 r8 a8 |

	e8 e8 a4 g4 |
	fis2 r4 |

	b8. b16 b4 b4 |
	b4 c4 r4 |
	cis8. cis16 cis4 cis4 |
	cis4 d4 r4 |

	d2 d4 |
	d2 d4 |
	e4 d4 b8 b8 |
	c8 e8 d4 c4 |
	b2 r4
}

bOne = \relative c' {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0

	g4^\markup{ \translate #'(-2 . -1) \dynamic {mf}} d4 b'4 |
	b8 a8 a2 |
	a4 d,4 c'4 |
	c8 b8 b2 |

	b4 g8 b8 d8 b8 |
	a4 fis8 a8 d8 a8 |
	cis16[ b16] a16[ g16] fis4 e4 |
	d2 r8 d'8 |

	cis16[ b16] a16[ g16] fis4 e4 |
	d2 r4 |

	g8.^\f fis16 g8 d8 e8 f8 |
	f4 e4 r4 |
	a8. gis16 a8 e8 fis8 g8 |
	g4 fis4 r4 |

	bes8 a8 bes8 a8 d8 a8 |
	bes8 a8 bes8 a8 d8 a8 |
	bes4 a4 g8 g8 |
	g8 g8 g4 fis4 |
	g2 r4
}

bTwo = \relative c {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0

	g4 g4 g4 |
	d'8 d8 d2 |
	d4 d4 d4 |
	g,8 g8 g2 |

	g4 b4 g4 |
	d'2 d4 |
	g,8 g8 a4 a4 |
	d2 r8 d8 |

	g,8 g8 a4 a4 |
	d2 r4 |

	g,8. g16 g4 g4 |
	c4 c4 r4 |
	a8. a16 a4 a4 |
	d4 d4 r4 |

	d2 d4 |
	d2 d4 |
	cis4 d4 e8 e8 |
	c8 c8 d4 d4 |
	g,2 r4
}
