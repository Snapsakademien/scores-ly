global = {
	\key a \minor
}

systemUp = \relative c' {
	\override DynamicLineSpanner.staff-padding = #4

	R1         | s2\mf\< s2\> | s1\f     | s2.\> s4\!
	\bar ":|.|:"
	s1\p       | s1           | s1\cresc | s1\f
	\bar ":|.|:"
	R1         | s2\mf\< s2\> | s1\f     | s2.\> s4\!
	\bar ":|.|:"
	s2\pp s2\< | s1\mf\cresc  | s1\ff | s2.\>^\markup { rall. } s4\!
	\bar "|."
}

systemDown = \relative c' {
	\override DynamicLineSpanner.staff-padding = #4

	\repeat volta 2 {
		s1         | s2\mf\< s2\> | s1\f     | s2.\> s4\!
	}
	\break
	\repeat volta 2 {
		s1\p       | s1           | s1\cresc | s1\f
	}
	\break
	\repeat volta 2 {
		s1         | s2\mf\< s2\> | s1\f     | s2.\> s4\!
	}
	\break
	\repeat volta 2 {
		s2\pp s2\< | s1\mf\cresc  | s1\ff | s2.\>_\markup { rall. } s4\!
	}

}

systemBone = \relative c' {
	\override DynamicLineSpanner.staff-padding = #2

	s2\p\< s2\> | s1\! | s1 | s1
	\bar ":|.|:"
	s1          | s1  | s1 | s1
	\bar ":|.|:"
	s2\p\< s2\> | s1\! | s1 | s1
	\bar ":|.|:"
	s1          | s1  | s1 | s1
	\bar ":|."

}

tOne = \relative c {
	\autoBeamOff
	\override Voice.Rest #'staff-position = #0

	s4^\markup {  \translate #'(-6 . 3) \bold Maestoso } s2. |
	e4 a8. c16 d4 c4 |
	c4 c8. c16 f4 e4 |
	d4 c8. c16 b4 s4 |

	e4 e8. d16 d4 d4 |
	c4 c8. c16 b4 b4 |
	a8[ b8] c8 e8 g4 f4 |
	e4 dis8. dis16 e4 s4 |

	s1 |
	e,4 a8. c16 d4 c4 |
	c4 c8. c16 f4 e4 |
	d4 c8. c16 b4 s4 |

	a4 a8 s16 a16 b4 b4 |
	cis4 cis8. cis16 d4 d4 |
	a'4 gis8. a16 a4 e4 |
	e4 e8. e16 a,4 s4 |

}

tTwo = \relative c {
	\autoBeamOff
	\override Voice.Rest #'staff-position = #0

	s1 |
	e4 e8. a16 b4 a4 |
	c4 c8. c16 b4 c4 |
	e,4 e8. a16 gis4 r4 |

	c4 c8. c16 c4 b4 |
	b4 a8. a16 a4 gis4 |
	a8[ b8] c8 c8 e4 d4 |
	c4 c8. c16 b4 r4 |

	s1 |
	e,4 e8. a16 b4 a4 |
	c4 c8. c16 b4 c4 |
	e,4 e8. a16 gis4 r4 |

	a4 a8 r16 a16 a4 a4 |
	a4 a8. a16 d4 d4 |
	dis4 dis8. dis16 e4 c4 |
	d4 c8. b16 c4 r4 |

}

bOne = \relative c {
	\autoBeamOff

	R1 |
	e4 e8. e16 e4 e4 |
	a4 a8. a16 a4 a4 |
	gis4 a8. c,16 e4 s4 |

	g4 g8. g16 g4 f4 |
	e4 e8. e16 e4 e4 |
	a8[ gis8] a8 g8 bes4 a4 |
	a4 a8. a16 gis4 s4 |

	R1 |
	e4 e8. e16 e4 e4 |
	a4 a8. a16 a4 a4 |
	gis4 a8. c,16 e4 s4 |

	e4 e8 s16 e16 f4 f4 |
	g4 g8. g16 a4 a4 |
	c4 b8. c16 c4 a4 |
	a4 gis8. gis16 a4 s4 |

}

bTwo = \relative c {
	\autoBeamOff
	\override Voice.Rest #'staff-position = #0

	a4 c8. e16 f4 e4 |
	e4 c8. a16 gis4 a4 |
	f'4 e8. e16 d4 c4 |
	b4 a8. c16 e4 r4 |

	c4 c8. g16 g4 gis4 |
	a4 a8. c16 e4 e4 |
	f8[ e8] a8 g8 cis,4 d4 |
	e4 f8. f16 e4 r4 |

	a,4 c8. e16 f4 e4 |
	e4 c8. a16 gis4 a4 |
	f'4 e8. e16 d4 c4 |
	b4 a8. c16 e4 r4 |

	c4 c8 r16 c16 d4 d4 |
	e4 e8. e16 f4 f4 |
	f4 f8. f16 e4 e4 |
	e4 <e e,>8. <e e,>16 <e a,>4 r4 |
}
