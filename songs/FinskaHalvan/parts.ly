global = {
	\key f \minor
	\time 4/4
}

system = \relative c' {
	\partial 4

	s4\p |
	s1\< | s4\! s2.\> | s1\fz-\> | s1\! | \break
	s1\< | s4\! s2.\> | s1\fz-\> | s1\! | s1 | \break
	s2.\> s4\! | s4.\< s8\! s8 s4.\> | s1\! | s1 |\break
	s1 | s1 | s4 s2\< s4\> |
	s2.\! \bar "|."
}

tOne = \relative c' {
	\autoBeamOff
	\partial 4

	c4 |
	c4. c8  c4  c4 |
	f2 es2 |
	des2. des4 |
	c2 \once \override Voice.Rest #'staff-position = #0 r4 c4 |

	c4. c8  c4  c4 |
	f2 es2 |
	des2. des4 |
	c2 \once \override Voice.Rest #'staff-position = #0 r4 c4 |

	e4 f4 des4 c4 |
	bes4.( des8) c4 c4 |
	e4 f4 aes4.^\markup{\italic{ten.}} g8 |
	f2( c4) aes8.^\p f16 |

	des'2~ des8. des16 c8. bes16 |
	f'2 r4 aes,8. des16 |
	c2~ c8 g8^\markup{\italic{ ten. }} des'8.^\> c16  |
	c2.\! c4 | c2.\fermata
}

tTwo = \relative c' {
	\autoBeamOff
	\partial 4

	c4 |
	c4. bes8  aes4  aes4 |
	des2 c2 |
	c4( bes8[ a8] bes4) bes4 |
	g2 \once \override Voice.Rest #'staff-position = #0 r4 c4 |

	c4. bes8  aes4  aes4 |
	des2 c2 |
	c4( bes8[ a8] bes4) bes4 |
	g2 \once \override Voice.Rest #'staff-position = #0 r4 c4 |

	c4 c4 bes4 aes4 |
	aes4( g4) aes4 c4 |
	c4 c4 c8[ des8] c8[ bes8] |
	aes2( aes4) r4 |

	r4 f8.\pp f16 f4 r4 |
	r4 aes8. bes16 c4 r4 |
	r4 aes8. aes16 g4 r4 |
	r4 a8 a8 a4 g8[ bes8] |

	a2.
}

bOne = \relative c {
	\override Voice.Rest #'staff-position = #0
	\autoBeamOff
	\partial 4

	c'4 |
	aes4. g8 f4 f4 |
	aes2 aes2 |
	f2. g8[ f8]|
	e2 r4 c'4 |

	aes4. g8 f4 f4 |
	aes2 aes2 |
	f2. g8[ f8] |
	e2 r4 c'4 |

	bes4 aes4 f4 f4 |
	f4(  es4) es4 aes4 |
	bes4 aes4 bes4 c8[ des8] |
	c2( aes4) r4 |

	r4 des,8. des16 des4 r4 |
	r4 f8. g16 aes4 r4 |
	r4 f8. f16 e4 r4 |
	r4 f8 f8 f4 e8[ g8] |

	f2.
}

bTwo = \relative c {
	\autoBeamOff
	\partial 4
	\override Voice.Rest #'staff-position = #0

	c'4 |
	aes4. g8 f4 es4 |
	des2 aes2 |
	bes2. bes4 |
	c2 r4 c'4 |

	aes4. g8 f4 es4 |
	des2 aes2 |
	bes2. bes4 |
	c2 r4 c4 |

	g'4 f4 bes,4 c4 |
	des4( es4) aes,4 aes'4 |
	g4 f4 e4.-\markup{\italic{ten.}} e8 |
	f2~ f4 r4 |

	r4 bes,8.\pp bes16 bes4 r4 |
	r4 f8. f16 f4 r4 |
	r4 c'8. c16 c4 r4 |
	r4 f,8 a8 c4 c4 |

	f,2.\fermata
}
